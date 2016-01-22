//
//  PlayerProfileViewController2.swift
//  KickApp
//
//  Created by Gowda I V, Praveen on 1/21/16.
//  Copyright © 2016 Gowda I V, Praveen. All rights reserved.
//

import UIKit

class PlayerProfileViewController2: UIViewController {
    
    let titles = ["Known As", "Games Played", "Goals Scored", "Preferred Position", "Preferred Foot", "Injury", "Injury Duration", "Height", "Club", "League", "Contract"]
    
    let values = ["Slocombe", "1", "0", "GK", "Right", "None", "0", "183", "Scunthrope Utd", "ENG 3", "44"]
    
    override func viewDidLoad() {
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Upcoming Matches", style: .Plain, target: self, action: Selector(""))
//        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "All Players", style: .Plain, target: self, action: Selector("logout"))
    }
    
    func logout() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}

extension PlayerProfileViewController2: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("playercell")!
        let titleLabel = cell.viewWithTag(1) as! UILabel
        let valueLabel = cell.viewWithTag(2)as! UILabel
        titleLabel.text = titles[indexPath.row]
        valueLabel.text = values[indexPath.row]
        return cell
    }
}