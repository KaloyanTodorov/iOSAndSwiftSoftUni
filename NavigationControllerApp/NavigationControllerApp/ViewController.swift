//
//  ViewController.swift
//  NavigationControllerApp
//
//  Created by  Калоян Тодоров on 2/9/17.
//  Copyright © 2017  Калоян Тодоров. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.imageView.layer.cornerRadius = self.imageView.frame.height/2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

