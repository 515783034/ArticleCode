//
//  DemoViewController.swift
//  weak_Delegates
//
//  Created by Shi Jian on 2017/9/18.
//  Copyright © 2017年 HHMedic. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController, DemoProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "demo VC"
        
        DemoManager.default.add(self)
    }

    deinit {
        
        print("DemoViewController is deinited")
        DemoManager.default.remove(self)
    }
    

}


