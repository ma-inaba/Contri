//
//  SponsorshipTable.swift
//  Contri
//
//  Created by inaba masaya on 2017/07/30.
//  Copyright © 2017年 inaba masaya. All rights reserved.
//

import UIKit

class SponsorshipTable: UITableView,UITableViewDelegate,UITableViewDataSource {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.delegate = self
        self.dataSource = self
        self.register(UINib(nibName: "SponsorshipTableCell", bundle: nil), forCellReuseIdentifier: "SponsorshipTableCell")
        self.estimatedRowHeight = 44
        self.rowHeight = UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath) {
        deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.dequeueReusableCell(withIdentifier: "SponsorshipTableCell", for: indexPath) as! SponsorshipTableCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
}
