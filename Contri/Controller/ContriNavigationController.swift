//
//  ContriNavigationController.swift
//  Contri
//
//  Created by inaba masaya on 2017/07/30.
//  Copyright © 2017年 inaba masaya. All rights reserved.
//

import UIKit

class ContriNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        settingUI()
    }
    
    func settingUI() {
        self.navigationBar.tintColor = UIColor.contriDarkBlue()
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.contriDarkBlue()]
        self.navigationBar.barTintColor = UIColor.contriSkinWhite()
    }
}
