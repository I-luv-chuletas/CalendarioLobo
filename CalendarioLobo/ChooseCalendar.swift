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
    

}
