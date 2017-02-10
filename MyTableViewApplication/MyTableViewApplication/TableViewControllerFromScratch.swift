//
//  TableViewControllerFromScratch.swift
//  MyTableViewApplication
//
//  Created by  Калоян Тодоров on 2/9/17.
//  Copyright © 2017  Калоян Тодоров. All rights reserved.
//

import UIKit

class TableViewControllerFromScratch: UIViewController, UITableViewDelegate, UITableViewDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableIdentifier", for: indexPath)
        
        cell.textLabel?.text = " Row: \(indexPath.row)"
        
        return cell
    }

}
