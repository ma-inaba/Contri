//
//  ProfileViewController.swift
//  Contri
//
//  Created by inaba masaya on 2017/07/30.
//  Copyright © 2017年 inaba masaya. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingUI()
    }
    
    // MARK: Setting
    func settingUI() {
        self.navigationController!.navigationBar.shadowImage = UIImage()
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)        
    }

    // MARK: UIViewController
    override var prefersStatusBarHidden : Bool {
        return true
    }
}
