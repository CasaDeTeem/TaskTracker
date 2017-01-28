//
//  WorkTicket.swift
//  TaskTracker
//
//  Created by Tim Morris on 1/27/17.
//  Copyright © 2017 Tim Morris. All rights reserved.
//

import UIKit

class WorkTicket {
    
    //MARK: Properties
    var id: String // guid?
    var technician: String
    var machine: String
    var problemType: String
    var problemSubtype: String
    var photo: UIImage?
    var notes: String?
    
    
    
    init() {
        let uuid = UUID().uuidString
        self.id = uuid
        self.technician = ""
        self.machine = ""
        self.problemType = ""
        self.problemSubtype = ""
        
        
        
        
        
        print("Ticket initialized")
    }
    
    
    
    
}
