//
//  JoinSummaryViewController.swift
//  Contri
//
//  Created by inaba masaya on 2017/07/30.
//  Copyright © 2017年 inaba masaya. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class JoinSummaryViewController: UIViewController, IndicatorInfoProvider {
    
    //ここがボタンのタイトルに利用されます
    var itemInfo: IndicatorInfo = "Join"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //必須
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
}
