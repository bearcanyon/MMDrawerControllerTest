//
//  ViewController.swift
//  MMDrawerControllerTest
//
//  Created by KumagaiNaoki on 2016/06/07.
//  Copyright © 2016年 KumagaiNaoki. All rights reserved.
//

import UIKit
import MMDrawerController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapLeftButton(sender: UIBarButtonItem) {
        let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left,animated: true, completion:nil)
    }
}

