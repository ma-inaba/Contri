//
//  LoginModel.swift
//  Contri
//
//  Created by inaba masaya on 2017/07/30.
//  Copyright © 2017年 inaba masaya. All rights reserved.
//

import UIKit

class LoginModel: NSObject {

    // TODO: ログイン処理が決まり次第そちらを使用する可能性あり
    var isLogin = false
    
    class var sharedInstance : LoginModel {
        struct Static {
            static let instance : LoginModel = LoginModel()
        }
        return Static.instance
    }
}
