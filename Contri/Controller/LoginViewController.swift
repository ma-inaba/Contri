//
//  LoginViewController.swift
//  Contri
//
//  Created by inaba masaya on 2017/07/30.
//  Copyright © 2017年 inaba masaya. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var createAccountButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingUI()
    }
    
    // MARK: Setting
    func settingUI() {
        loginLabel.text = "LoginLabelTitle".localized
        createAccountButton.setTitle("CreateAccountButtonTitle".localized, for: .normal)
        loginButton.setTitle("LoginButtonTitle".localized, for: .normal)
    }

    // MARK: Action
    @IBAction func onCreateButton(_ sender: Any) {
        debugPrint("onCreateButton")
    }
    
    @IBAction func onLoginButton(_ sender: Any) {
        debugPrint("onLoginButton")
        
        LoginModel.sharedInstance.isLogin = true
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: UIViewController
    override var prefersStatusBarHidden : Bool {
        return true
    }
}
