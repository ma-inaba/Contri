//
//  SummaryTable.swift
//  Contri
//
//  Created by inaba masaya on 2017/07/30.
//  Copyright © 2017年 inaba masaya. All rights reserved.
//

import UIKit

protocol SummaryTableDelegate {
    
    func didSelectRowAt(indexPath:IndexPath)
}

class SummaryTable: UITableView,UITableViewDelegate,UITableViewDataSource {
    
    var summaryTableDelegate: SummaryTableDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        self.delegate = self
        self.dataSource = self
        self.register(UINib(nibName: "SummaryTableViewCell", bundle: nil), forCellReuseIdentifier: "SummaryTableViewCell")
        self.estimatedRowHeight = 44
        self.rowHeight = UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath) {
        deselectRow(at: indexPath, animated: true)
        summaryTableDelegate?.didSelectRowAt(indexPath: indexPath)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.dequeueReusableCell(withIdentifier: "SummaryTableViewCell", for: indexPath) as! SummaryTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}
