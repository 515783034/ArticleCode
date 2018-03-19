//
//  TutorialUtils.swift
//  SJTutorialSDK
//
//  Created by Shi Jian on 2018/3/19.
//  Copyright © 2018年 HHMedic. All rights reserved.
//

import UIKit

public class TutorialRes: NSObject {
    public static func getImg(_ name: String) -> UIImage? {
        guard let url = Bundle(for: TutorialRes.self).url(forResource: "SJTutorialRes", withExtension: "Bundle") else { return nil }
        guard let path = Bundle(url: url)?.path(forResource: name, ofType: nil) else { return nil }
        return UIImage(contentsOfFile: path)
    }
    
    public static func aliImg() -> UIImage? {
        return getImg("alipay@3x.png")
    }
    
    public static func WechatImg() -> UIImage? {
        return getImg("wechat@3x.png")
    }
    
}
