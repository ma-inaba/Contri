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
    
    // MARK: Action
    @IBAction func onSettingButton(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let settingViewCon = storyboard.instantiateViewController(withIdentifier: "SettingViewController")
        let navController = ContriNavigationController(rootViewController: settingViewCon)
        present(navController, animated: true, completion: nil)
    }
    
    // MARK: UIViewController
    override var prefersStatusBarHidden : Bool {
        return true
    }
}
