//
//  PaymentViewController.swift
//  KickApp
//
//  Created by Gowda I V, Praveen on 1/22/16.
//  Copyright © 2016 Gowda I V, Praveen. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController {
    override func viewDidLoad() {
        let button = self.view.viewWithTag(1) as! UIButton
        button.addTarget(self, action: Selector("paymentdone"), forControlEvents: .TouchUpInside)
    }
    
    func paymentdone() {
        let alert = UIAlertController(title: "Payment Successful", message: "Payment was successfully processed", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "Done", style: .Default, handler: { (action) -> Void in
            self.performSegueWithIdentifier("showtickets", sender: self)
        }))
        self.presentViewController(alert, animated: true, completion: nil)
    }
}
