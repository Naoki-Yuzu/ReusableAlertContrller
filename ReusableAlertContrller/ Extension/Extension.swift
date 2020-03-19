//
//  Extension.swift
//  ReusableAlertContrller
//
//  Created by デュフフくん on 2020/03/19.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit

extension UIViewController {
    
    class func displayAlertOfAlertStyle(viewController: UIViewController, title: String? , message: String?, rightActionTitle: String? = "OK", rightActionCompletion: (() -> Void)?, leftActionTitle: String? = "キャンセル" , leftActionCompletion: (() -> Void)?) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        if let rightActionTitle = rightActionTitle {
            let rightAction = UIAlertAction(title: rightActionTitle, style: .default) { (_) in
                guard let rightActionCompletion = rightActionCompletion else { return }
                rightActionCompletion()
            }
            alertController.addAction(rightAction)
        }
        
        
        if let leftActionTitle = leftActionTitle {
            let leftAction = UIAlertAction(title: leftActionTitle, style: .cancel) { (_) in
                guard let leftActionCompletion = leftActionCompletion else { return }
                leftActionCompletion()
            }
            alertController.addAction(leftAction)
        }
        
        
        viewController.present(alertController, animated: true, completion: nil)
    }
    
}
