//
//  TicketsViewController.swift
//  KickApp
//
//  Created by Gowda I V, Praveen on 1/22/16.
//  Copyright © 2016 Gowda I V, Praveen. All rights reserved.
//

import UIKit

class TicketsViewController: UIViewController {
    override func viewDidLoad() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Home", style: .Plain, target: self, action: "done")
    }
    
    func done() {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
}
