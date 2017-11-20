//
//  ViewController.swift
//  coredataFun
//
//  Created by Nino Rorudan on 11/20/17.
//  Copyright © 2017 The NTMC Foundation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Referring to the app delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        //context is a manager that allows us to work with Core Data
        let context = appDelegate.persistentContainer.viewContext
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

