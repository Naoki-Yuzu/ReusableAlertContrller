//
//  ViewController.swift
//  ReusableAlertContrller
//
//  Created by デュフフくん on 2020/03/19.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIViewController.displayAlertOfAlertStyle(viewController: self, title: "デュフフ", message: "良いのかい？", rightActionTitle: "OK", rightActionCompletion: {
            print("tapped ok")
        }, leftActionTitle: "キャンセル") {
            print("tapped cancel")
        }
    }

}

