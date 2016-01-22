//
//  PlayerSelectionViewController.swift
//  KickApp
//
//  Created by Gowda I V, Praveen on 1/22/16.
//  Copyright © 2016 Gowda I V, Praveen. All rights reserved.
//

import UIKit

class PlayerSelectionViewController: UITableViewController {
    
    override func viewDidLoad() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

}

extension PlayerSelectionViewController {
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Select Players", style: .Plain, target: self, action: Selector("goback"))
        tableView.cellForRowAtIndexPath(indexPath)?.selectedBackgroundView?.backgroundColor = UIColor.greenColor()
    }
    
    func goback() {
        let alert = UIAlertController(title: "Players Selected", message: "Player Selection Succcessfull", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
            self.navigationController?.popToRootViewControllerAnimated(true)
        }))
        self.presentViewController(alert, animated: true) { () -> Void in
            
        }
        
    }
}