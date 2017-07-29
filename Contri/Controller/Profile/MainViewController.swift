//
//  MainViewController.swift
//  Contri
//
//  Created by inaba masaya on 2017/07/30.
//  Copyright © 2017年 inaba masaya. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class MainViewController: ButtonBarPagerTabStripViewController {
    
    override func viewDidLoad() {
        settingStyle()
        super.viewDidLoad()
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        //管理されるViewControllerを返す処理
        let sponsorship = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SponsorshipSummaryViewController")
        let join = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "JoinSummaryViewController")
        let childViewControllers:[UIViewController] = [sponsorship, join]
        return childViewControllers
    }
    
    func settingStyle() {
        settings.style.buttonBarBackgroundColor = UIColor.contriSkinWhite()     // バーの色
        settings.style.buttonBarItemBackgroundColor = UIColor.contriSkinWhite() // ボタンの色
        settings.style.buttonBarItemTitleColor = UIColor.contriDarkBlue()       // セルの文字色
        settings.style.buttonBarItemFont = UIFont.boldSystemFont(ofSize: 18)    // セルのフォント
        settings.style.selectedBarBackgroundColor = UIColor.contriDarkBlue()    // セレクトバーの色
        settings.style.buttonBarLeftContentInset = 10   // 左のマージン
        settings.style.buttonBarRightContentInset = 10  // 右のマージン
    }
}
