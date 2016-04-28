//
//  ChooseCalendar.swift
//  CalendarioLobo
//
//  Created by Erick Rivera on 4/26/16.
//  Copyright © 2016 Alexander Rivera. All rights reserved.
//

import UIKit

class ChooseCalendar: UITableViewController
{

    required init?(coder aDecoder: NSCoder)
    {
        print("init Calendars")
        super.init(coder: aDecoder)
    }
    
    deinit
    {
        print("deinit PlayerDetailsViewController")
    }
    
    
   
     @IBAction func cancelToPlayersViewController(segue:UIStoryboardSegue)
     {
     
     }
    
    
    @IBAction func academicSelected(segue:UIStoryboardSegue, sender: AnyObject?){
       
        // Activamos el segue si le damos al que es
        self.performSegueWithIdentifier("academic", sender: self)
        
        
    }

}
