import Foundation

/// 导航的分类
public enum JumpType: Int {
    /// 前进
    case forward
    /// 后退
    case back
}

/// 前进的分类 -> HiUIKit://[host]?forwardType=0
public enum ForwardType: Int {
    /// 推进
    case push
    /// 展示
    case present
    /// 打开
    case open
}

/// 后退的分类 -> HiUIKit://back?backType=0
public enum BackType: Int {
    /// 自动
    case auto
    /// 弹出（一个）
    case popOne
    /// 弹出（所有）
    case popAll
    /// 退场
    case dismiss
}

/// 打开的分类 -> HiUIKit://[popup|sheet|alert|toast]/[path]
public enum OpenType: Int {
    /// 消息框（自动关闭）
    case toast
    /// 提示框（可选择的）
    case alert
    /// 表单框（可操作的）
    case sheet
    /// 弹窗
    case popup
    /// 业务（自定义的首页或登录页等）
    case logic
    
    static let allHosts = [
        HiNavHost.toast,
        HiNavHost.alert,
        HiNavHost.sheet,
        HiNavHost.popup,
        HiNavHost.logic
    ]
}

public enum HiNavError: Error {
    case navigation
}

public typealias HiNavHost = String
public typealias HiNavPath = String

extension HiNavHost {
    /// 返回上一级（包括退回或者关闭）
    public static var back: HiNavHost { "back" }
    /// 弹窗分为两类（自动关闭的toast和手动关闭的）
    public static var toast: HiNavHost { "toast" }
    public static var alert: HiNavHost { "alert" }
    public static var sheet: HiNavHost { "sheet" }
    public static var popup: HiNavHost { "popup" }
    public static var logic: HiNavHost { "logic" }
    /// 常用host
    public static var web: HiNavHost { "web" }
    public static var user: HiNavHost { "user" }
    public static var home: HiNavHost { "home" }
    public static var login: HiNavHost { "login" }
    public static var personal: HiNavHost { "personal" }
}

extension HiNavPath { }
