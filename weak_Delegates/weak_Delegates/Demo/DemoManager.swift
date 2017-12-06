 //
//  DemoManager.swift
//  weak_Delegates
//
//  Created by Shi Jian on 2017/9/18.
//  Copyright © 2017年 HHMedic. All rights reserved.
//

import UIKit

class DemoManager {

    static let `default` = DemoManager()
    
    var timer: Timer?
    
    init() {
        
        timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(loop), userInfo: nil, repeats: true)
    }
    
    var delegates = WeakArray<DemoProtocol>()
    
    
    func add(_ delegate: DemoProtocol) {
    
        delegates.add(delegate)
    }
    
    func remove(_ delegate: DemoProtocol) {
    
        delegates.remove(delegate)
    }
    
    func excute(block: @escaping ((DemoProtocol?)->Void)) {
    
        delegates.excute(block)
    }
}
 

 // demo
extension DemoManager {
 
    /// 定时执行代理方法, 测试用
    @objc func loop() {
    
        excute {
            $0?.printInfo($0!)
        }
        
    }
    
}
