//
//  CoachStrategyViewController.swift
//  KickApp
//
//  Created by Gowda I V, Praveen on 1/22/16.
//  Copyright © 2016 Gowda I V, Praveen. All rights reserved.
//

import UIKit

class CoachStrategyViewController: UIViewController {
    override func viewDidLoad() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .Done, target: self, action: Selector("done"))
    }
    
    func done() {
        self.navigationController?.popToRootViewControllerAnimated(true
        )
    }
}
