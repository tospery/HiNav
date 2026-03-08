//
//  NavigationController.swift
//  HiUIKit
//
//  Created by liaoya on 2022/7/19.
//

import UIKit

open class NavigationController: UINavigationController {
    
    // MARK: - iOS 16+ 旋转控制
    open override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return self.topViewController?.supportedInterfaceOrientations ?? .all
    }

    open override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return self.topViewController?.preferredInterfaceOrientationForPresentation ?? .portrait
    }

    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return self.topViewController?.preferredStatusBarStyle ?? .default
    }

    // 如果 topViewController 改变旋转能力，通知系统
    open func updateSupportedOrientations() {
        if #available(iOS 16.0, *) {
            self.setNeedsUpdateOfSupportedInterfaceOrientations()
        }
    }

}
