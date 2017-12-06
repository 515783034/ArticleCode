//
//  ViewController.swift
//  weak_Delegates
//
//  Created by Shi Jian on 2017/9/13.
//  Copyright © 2017年 HHMedic. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DemoProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "main"
        
        DemoManager.default.add(self)
        
    }
    
    deinit {
        
        DemoManager.default.remove(self)
    }


}

