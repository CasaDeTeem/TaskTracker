//
//  SecondViewController.swift
//  TaskTracker
//
//  Created by Tim Morris on 1/21/17.
//  Copyright © 2017 Tim Morris. All rights reserved.
//

import UIKit

class SecondViewController: UITableViewController, DataEnteredDelegate {
    
    //will rename this view controller...it's responsible for creating the workticket
    
    

    //MARK: Properties
    
    
    let ticket = WorkTicket()
    
    @IBOutlet weak var technicianLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("made it here?")
        if segue.identifier == "showTechnicianTableViewController" {
            print ("prepare segue")
            let technicianTableViewController = segue.destination as! TechnicianTableViewController
            technicianTableViewController.delegate = self
            
            technicianTableViewController.selectedTechnician = ticket.technician
        }
    }
    
    func userDidEnterInformation(info: String) {
        print("yes!")
        technicianLabel.text = info
        ticket.technician = info
        
    }


}

