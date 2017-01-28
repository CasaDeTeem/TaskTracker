//
//  FirstViewController.swift
//  TaskTracker
//
//  Created by Tim Morris on 1/21/17.
//  Copyright © 2017 Tim Morris. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    //MARK: Properties

    @IBOutlet weak var technicianTextField: UITextField!
    @IBOutlet weak var technicianLabel: UILabel!
    
    @IBOutlet weak var testButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

