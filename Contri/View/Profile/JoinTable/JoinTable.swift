//
//  JoinTable.swift
//  Contri
//
//  Created by inaba masaya on 2017/07/30.
//  Copyright © 2017年 inaba masaya. All rights reserved.
//

import UIKit

class JoinTable: UITableView,UITableViewDelegate,UITableViewDataSource {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.delegate = self
        self.dataSource = self
        self.register(UINib(nibName: "JoinTableCell", bundle: nil), forCellReuseIdentifier: "JoinTableCell")
        self.estimatedRowHeight = 44
        self.rowHeight = UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath) {
        deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.dequeueReusableCell(withIdentifier: "JoinTableCell", for: indexPath) as! JoinTableCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
}
