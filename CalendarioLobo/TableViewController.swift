//
//  splash_screen.swift
//  CalendarioLobo
//
//  Created by Krystal N. Medina Rios on 4/27/16.
//  Copyright © 2016 Alexander Rivera. All rights reserved.
//

import UIKit
import Foundation

class SplashTableView: UITableViewController {
    
    var clubs = ["PEH", "CSSA", "ACM-W", "Histriones"]
    
    //var events = ["Body Image and Identity", "Atlantic College Tour", "Github Workshop", "Visita Mariann Pabon"]
    
    var dates = ["April 28, 2016", "April 29, 2016", "January 25, 2016", "March 8, 2016"]
    
    var indexPath = NSIndexPath(forRow: 3, inSection: 0)
    

    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        self.tableView.scrollToRowAtIndexPath(indexPath, atScrollPosition: UITableViewScrollPosition.Middle, animated: true)
        
        
    }
    
    
    override func viewWillAppear(animated : Bool) {
        
        super.viewWillAppear(animated)
        
        
    }
    
    override func tableView (tableView: UITableView, cellForRowAtIndexPath indexPath : NSIndexPath) -> UITableViewCell {
        
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "cell")
        
        cell.backgroundColor = UIColor.whiteColor()
        
        if indexPath.section == 0 {
            
            cell.textLabel?.text = clubs[indexPath.indexAtPosition(1)]
            cell.detailTextLabel?.text = dates[indexPath.row]



        }
        
        //cell.textLabel?.text = clubs[indexPath.row]
        //cell.detailTextLabel?.text = dates[indexPath.row]
        
        return cell
    }
    
    override func tableView (tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return clubs.count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 3
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        
        if section == 0 {
            
            return "Your Events"
            
        }
        else if section == 1 {
            
            return "Upcoming Events"
        }
        else {
            
            return "Posted Recently"
        }
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath selectedPosition: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(selectedPosition, animated: true)
        
        
        let selectedCell : UITableViewCell = tableView.cellForRowAtIndexPath(selectedPosition)!
        
        if selectedCell.textLabel?.text == "PEH" {
            
            selectedCell.textLabel?.text = "Body Image and Identity"
            
        }
        else if selectedCell.textLabel?.text == "CSSA" {
            
            selectedCell.textLabel?.text =  "Atlantic College Tour"
            
        }
        else if selectedCell.textLabel?.text == "ACM-W" {
            
            selectedCell.textLabel?.text = "Github Workshop"
            
        }
        else if selectedCell.textLabel?.text == "Histriones" {
            
            selectedCell.textLabel?.text = "Stand UP Comedy"
            
        }
        
        
    }
    

}
