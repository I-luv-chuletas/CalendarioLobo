//
//  AcademicCalendarTableView.swift
//  CalendarioLobo
//
//  Created by Erick Rivera on 4/26/16.
//  Copyright © 2016 Alexander Rivera. All rights reserved.
//

import UIKit

class AcademicCalendarTableView: UITableViewController
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
    
    
}
