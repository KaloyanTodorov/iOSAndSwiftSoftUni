//
//  MyTableViewController.swift
//  MyTableViewApplication
//
//  Created by  Калоян Тодоров on 2/9/17.
//  Copyright © 2017  Калоян Тодоров. All rights reserved.
//

import UIKit

enum DataType {
    case name, years
}

class MyTableViewController: UITableViewController {

    let presidents: [[DataType: String]] = [[.name:"Donald Trump", .years:"2017-"],
                                            [.name:"Barack Obama", .years:"2009-2017"],
                                            [.name:"George W. Bush", .years:"2001-2009"],
                                            [.name:"Bill Clinton", .years:"1993-2001"],
                                            [.name:"George H. Bush", .years:"1989-1993"],
                                            [.name:"Ronald Reagan", .years:"1981-1989"],
                                            [.name:"Jimmy Carter", .years:"1977-1981"],
                                            [.name:"Gerald Ford", .years:"1974-1977"],
                                            [.name:"Richard Nixon", .years:"1969-1974"],
                                            [.name:"Lyndon Johnson", .years:"1963-1969"],
                                            [.name:"John F. Kennedy", .years:"1961-1963"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
         self.clearsSelectionOnViewWillAppear = true

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.presidents.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)

        cell.textLabel?.text = presidents[indexPath.row][.name]
        cell.detailTextLabel?.text = presidents[indexPath.row][.years]
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        
        print(cell?.textLabel?.text ?? "")
        
        self.performSegue(withIdentifier: "DetailsSegueIdentifier", sender: cell?.textLabel?.text)
        
        /*
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let detailsViewController = mainStoryboard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        
        detailsViewController.labelValue = cell?.textLabel?.text ?? ""
        
        self.navigationController?.pushViewController(detailsViewController, animated: true)
        */
    }

    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.destination is DetailsViewController {
            let destination = segue.destination as! DetailsViewController
            destination.loadViewIfNeeded()
            destination.detailsLabel.text = sender as! String
        }
        
        /*
        if segue.destination is DetailsViewController {
            let destination = segue.destination as! DetailsViewController
            let selectedIndex = self.tableView.indexPathForSelectedRow
            
            let cell = self.tableView.cellForRow(at: selectedIndex!)
            
            destination.detailsLabel.text = cell?.textLabel?.text ?? ""
            // destination.detailsLabel =
        }
 */
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

}
