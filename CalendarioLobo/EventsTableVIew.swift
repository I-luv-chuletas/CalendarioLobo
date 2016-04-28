//
//  Events.swift
//  CalendarioLobo
//
//  Created by Krystal N. Medina Rios on 4/28/16.
//  Copyright © 2016 Alexander Rivera. All rights reserved.
//

import Foundation
import UIKit

class Events: UITableViewController {
    
    //var cell = [Events]()
    
    var club, name, date : String
    
    init (club: String,name: String,date: String) {
        
        self.club = club
        self.name = name
        self.date = date
    
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
