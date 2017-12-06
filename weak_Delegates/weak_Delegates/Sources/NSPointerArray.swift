//
//  NSPointerArray.swift
//  weak_Delegates
//
//  Created by Shi Jian on 2017/9/13.
//  Copyright © 2017年 HHMedic. All rights reserved.
//

import UIKit

extension NSPointerArray {
    
    /// add
    func addObject(_ object: AnyObject?) {
        guard let strongObject = object else { return }
        
        let pointer = Unmanaged.passUnretained(strongObject).toOpaque()
        addPointer(pointer)
    }
    
    /// insert
    func insertObject(_ object: AnyObject?, at index: Int) {
        guard index < count, let strongObject = object else { return }
        
        let pointer = Unmanaged.passUnretained(strongObject).toOpaque()
        insertPointer(pointer, at: index)
    }
    
    /// replace
    func replaceObject(at index: Int, withObject object: AnyObject?) {
        guard index < count, let strongObject = object else { return }
        
        let pointer = Unmanaged.passUnretained(strongObject).toOpaque()
        replacePointer(at: index, withPointer: pointer)
    }
    
    /// get index
    func object(at index: Int) -> AnyObject? {
        guard index < count, let pointer = self.pointer(at: index) else { return nil }
        return Unmanaged<AnyObject>.fromOpaque(pointer).takeUnretainedValue()
    }
    
    
    /// remove
    func removeObject(at index: Int) {
        guard index < count else { return }
        
        removePointer(at: index)
    }
    
    /// remove
    func remove(_ object: AnyObject?) {
    
        var index: Int?
        for i in 0..<allObjects.count {
            
            if self.object(at: i)?.hash == object?.hash {
                index = i
            }
        }
        
        if let aIndex = index {
            removeObject(at: aIndex)
        }
    }
}
