import Foundation
import SwifterSwift
import HiBase

public protocol HiNavCompatible {
    
    // 合法的外部跳转
    func isLegalHost(host: HiNav.Host) -> Bool
    func allowedPaths(host: HiNav.Host) -> [HiNav.Path]
    
    // user-login
    func isLogined() -> Bool
    func needLogin(host: HiNav.Host, path: HiNav.Path?) -> Bool
    
    // target解析
    func resolution(_ target: String) -> Any?
}

final public class HiNav {
    
    public typealias Host = String
    public typealias Path = String
    
    public static var shared = HiNav()
    
    public func deepLink(host: Host, path: Path? = nil, parameters: [String: String]? = nil) -> String {
        var url = "\(Bundle.main.urlScheme() ?? "")://\(host)".url!
        if let path = path {
            url.appendPathComponent(path)
        }
        if let parameters = parameters {
            url.appendQueryParameters(parameters)
        }
        return url.absoluteString.removingSuffix("?")
    }
    
    public func parse(_ target: String) -> Any? {
        if let compatible = self as? HiNavCompatible {
            return compatible.resolution(target)
        }
        return nil
    }
    
}
