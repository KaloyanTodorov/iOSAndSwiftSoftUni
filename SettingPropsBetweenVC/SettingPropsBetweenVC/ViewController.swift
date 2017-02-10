//
//  ViewController.swift
//  SettingPropsBetweenVC
//
//  Created by  Калоян Тодоров on 2/10/17.
//  Copyright © 2017  Калоян Тодоров. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVCSegue" {
            let destination = segue.destination as! SecondViewController
            destination.loadViewIfNeeded()
            destination.label.text = "First Text"
        }
    }


    @IBAction func Button2Clicked(_ sender: UIButton) {
        // variant 1
 //       self.performSegue(withIdentifier: "toSecondVCSegue", sender: nil)
        
        // variant 2
        let secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondViewController.loadViewIfNeeded()
        secondViewController.label.text = "Second text"
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}

