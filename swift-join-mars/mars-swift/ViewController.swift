//
//  ViewController.swift
//  mars-swift
//
//  Created by Shi Jian on 2017/12/5.
//  Copyright © 2017年 AshenDever. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var con = Conversation()
        con.name = "ashen"
        con.notice = "for test"
        
        let data = try? con.serializedData()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

