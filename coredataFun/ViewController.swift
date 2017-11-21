//
//  ViewController.swift
//  coredataFun
//
//  Created by Nino Rorudan on 11/20/17.
//  Copyright © 2017 The NTMC Foundation. All rights reserved.
//

import UIKit
import CoreData


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Creating new Users
        //Referring to the app delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        //context is a manager that allows us to work with Core Data
        let context = appDelegate.persistentContainer.viewContext
        
        //line below enables us to save the User
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
        
        //line that actually creates a new user
        newUser.setValue("Phoebe", forKey: "username")
        newUser.setValue("ebak", forKey: "password")
        
        do
        {
            try context.save()
            print("SAVED")
        }
        catch
        {
            print("THERE WAS AN ERROR")
        }
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

