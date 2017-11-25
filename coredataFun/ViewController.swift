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
        
        
        //Referring to the app delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        //context is a manager that allows us to work with Core Data
        let context = appDelegate.persistentContainer.viewContext
        
        //line below enables us to save the User
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
        
         /*Creating new Users
        //line that actually creates a new user
        newUser.setValue("Pepe", forKey: "username")
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
        
        
        //Retrieving the created Users
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        
        do
        {
            let results = try context.fetch(request)
            
            if results.count > 0
            {
                for result in results as! [NSManagedObject]
                {
                    if let username = result.value(forKey: "username") as? String
                    {
                        print(username)
                        
                    }
                }
            }
        }
        catch
        {
            print("Error retrieving data, please check")
        }
                
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

