//
//  DossierTableView.swift
//  Arkca
//
//  Created by Steve on 8/9/16.
//  Copyright © 2016 SteveMKroll. All rights reserved.
//

import UIKit

class DossierTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Dossier"
        tableView.rowHeight = 80
        
        tableView.registerClass(MyCell.self, forCellReuseIdentifier: "cellId")
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dinoList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellId", forIndexPath: indexPath) as! MyCell
        cell.nameLabel.text = dinoList[indexPath.row].name.capitalizedString
        cell.dinoIcon.image = UIImage(named: dinoList[indexPath.row].icon)
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        dossierDino = dinoList[indexPath.row]
        
        let dossierVC = DossierViewController()
        navigationController?.pushViewController(dossierVC, animated: true)
        
    }
}
