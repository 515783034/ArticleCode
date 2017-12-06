//
//  MarsLog.swift
//  MarsTest
//
//  Created by Shi Jian on 2017/12/5.
//  Copyright © 2017年 Mac OS dev. All rights reserved.
//

import UIKit

let MSLog = MarsLog.default

class MarsLog {

    static let `default` = MarsLog()
    
    private var _log: JinkeyMarsBridge?
    
    init() {
        _log = JinkeyMarsBridge()
    }

    func config(level: XloggerType, releaseLevel: XloggerType, path: String, prefix: UnsafePointer<Int8>) {
        _log?.initXlogger(level, releaseLevel: releaseLevel, path: path, prefix: prefix)
    }
    
    func log(_ type: XloggerType, tag: String, content: String) {
        _log?.log(.debug, tag: tag, content: content)
        
    }
    
    func destroy() {
        _log?.deinitXlogger()
    }
    
}
