//
//  MachineTableViewController.swift
//  TaskTracker
//
//  Created by Tim Morris on 1/21/17.
//  Copyright © 2017 Tim Morris. All rights reserved.
//

import UIKit

class MachineTableViewController: UITableViewController {
    
    //MARK: Properties
    
    var selectedMachine: String?
    
    
    
    // MARK: - Table view data source
    // Revisit:  Get this data from plist or web service?
    let machines = ["Machine 123A", "Machine 456B", "Machine 6789", "Machine 2435G", "Machine 9876H"]
    
    
    // making this a weak variable so that it won't create a strong reference cycle
    weak var delegate: ItemSelectedDelegate? = nil
    
    //    @IBOutlet weak var textField: UITextField!
    //
    //    @IBAction func sendTextBackButton(sender: AnyObject) {
    //
    //        // call this method on whichever class implements our delegate protocol
    //        delegate?.userDidEnterInformation(info: textField.text!)
    //
    //        // go back to the previous view controller
    //        _ = self.navigationController?.popViewController(animated: true)
    //    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return machines.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = machines[indexPath.row]
        
        
        if (machines[indexPath.row] == selectedMachine) {
            cell.accessoryType = .checkmark
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selection = machines[indexPath.row]
        print(selection)
        
        // call this method on whichever class implements our delegate protocol
        delegate?.userDidSelectItem(info: selection)
        
        
        // go back to the previous view controller
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    override func willMove(toParentViewController parent: UIViewController?) {
        super.willMove(toParentViewController: parent)
        if parent == nil {
            print("This VC is 'will' be popped. i.e. the back button was pressed.")
        }
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
