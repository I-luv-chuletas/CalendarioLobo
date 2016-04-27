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
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated : Bool) {
        
        super.viewWillAppear()
        
        
    }
    
    override func tableView (tableView: UITableView, cellForRowAtIndexPath indexPath : NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "cell")
        
        cell.backgroundColor = self.view.backgroundColor
        
        cell.detailTextLabel?.text = "fecha"
        
        return cell
    }
    
    override func tableView (tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
    }
}
