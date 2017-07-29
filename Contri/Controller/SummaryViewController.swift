//
//  SummaryViewController.swift
//  Contri
//
//  Created by inaba masaya on 2017/07/30.
//  Copyright © 2017年 inaba masaya. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
        if !checkLogin() {
            showLoginView()
        }
    }
    
    func checkLogin() -> Bool {
        
        return LoginModel.sharedInstance.isLogin
    }
    
    func showLoginView() {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loginViewCon = storyboard.instantiateViewController(withIdentifier: "LoginViewController")
        present(loginViewCon, animated: true, completion: nil)
    }
}
