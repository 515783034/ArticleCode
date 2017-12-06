//
//  DemoProtocol.swift
//  weak_Delegates
//
//  Created by Shi Jian on 2017/9/18.
//  Copyright © 2017年 HHMedic. All rights reserved.
//

import UIKit

protocol DemoProtocol: NSObjectProtocol {

    func printInfo(_ sender: DemoProtocol)
    
}

extension DemoProtocol where Self: UIViewController {

    func printInfo(_ sender: DemoProtocol) {
    
        let tip = (sender as? UIViewController)?.title ?? ""
        print("delegate was excuted by " + tip)
    }


}
