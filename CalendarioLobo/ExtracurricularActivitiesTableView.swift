//
//  ExtracurricularActivitiesTableView.swift
//  CalendarioLobo
//
//  Created by Erick Rivera on 4/27/16.
//  Copyright © 2016 Alexander Rivera. All rights reserved.
//

import UIKit

class ExtracurricularActivitiesTableView: UITableViewController
{

    @IBAction func GoingDetails(sender: AnyObject)
    {
        self.performSegueWithIdentifier("NextSegue", sender: self)
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        _ = segue.destinationViewController as? DetailsViewController
        
        
    }
    
    
    @IBAction func unwindWithSelectedGame(segue:UIStoryboardSegue)
    {
        _ = segue.sourceViewController as? DetailsViewController
        
    }
    
    @IBAction func LogIn(sender: AnyObject)
    {
        var loginTextField: UITextField?
        var passwordTextField: UITextField?
        let alertController = UIAlertController(title: "UIAlertController", message: "UIAlertController With TextField", preferredStyle: .Alert)
        let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
           // println("Ok Button Pressed")
        })
        let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
           // println("Cancel Button Pressed")
        }
        alertController.addAction(ok)
        alertController.addAction(cancel)
        alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            // Enter the textfiled customization code here.
            loginTextField = textField
            loginTextField?.placeholder = "User ID"
        }
        alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            // Enter the textfiled customization code here.
            passwordTextField = textField
            passwordTextField?.placeholder = "Password"
            passwordTextField?.secureTextEntry = true
        }
        
        presentViewController(alertController, animated: true, completion: nil)
  
    }
    
}
