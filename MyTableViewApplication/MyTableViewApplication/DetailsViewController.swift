//
//  DetailsViewController.swift
//  MyTableViewApplication
//
//  Created by  Калоян Тодоров on 2/9/17.
//  Copyright © 2017  Калоян Тодоров. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var labelValue:String?
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    @IBOutlet weak var detailsText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
     //   self.detailsLabel.text = labelValue ?? ""
    }
    
    
    override func viewDidLayoutSubviews() {
        // self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
