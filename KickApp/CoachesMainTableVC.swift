//
//  CoachesMainTableVC.swift
//  KickApp
//
//  Created by Gowda I V, Praveen on 1/20/16.
//  Copyright © 2016 Gowda I V, Praveen. All rights reserved.
//

import UIKit

class CoachesMainTableVC: UITableViewController {
    
    let menuItems = ["Team Selection", "Strategy Planning", "Events", ]
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case 0:
            performSegueWithIdentifier("selectTeam", sender: self)
        case 1:
            performSegueWithIdentifier("strategy", sender: self)
        case 2:
            performSegueWithIdentifier("events", sender: self)
        default:
            print("wrong selection")
        }
    }
}
