//
//  SummaryViewController.swift
//  Contri
//
//  Created by inaba masaya on 2017/07/30.
//  Copyright © 2017年 inaba masaya. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController, SummaryTableDelegate {

    @IBOutlet weak var summaryTable: SummaryTable!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        settingUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
        if !checkLogin() {
            showLoginView()
        }
    }
    
    // MARK: Setting
    func settingUI() {
        summaryTable.summaryTableDelegate = self
    }
    
    // MARK: Action
    func checkLogin() -> Bool {
        
        return LoginModel.sharedInstance.isLogin
    }
    
    func showLoginView() {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loginViewCon = storyboard.instantiateViewController(withIdentifier: "LoginViewController")
        present(loginViewCon, animated: true, completion: nil)
    }
    
    // MARK: SummaryTableDelegate
    func didSelectRowAt(indexPath: IndexPath) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let detailViewCon = storyboard.instantiateViewController(withIdentifier: "DetailViewController")
        navigationController?.pushViewController(detailViewCon, animated: true )
    }
}
