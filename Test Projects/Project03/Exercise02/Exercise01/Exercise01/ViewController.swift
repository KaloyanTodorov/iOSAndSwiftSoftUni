//
//  ViewController.swift
//  Exercise01
//
//  Created by  Калоян Тодоров on 2/7/17.
//  Copyright © 2017  Калоян Тодоров. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorsLabel: UILabel!

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        
        switch sender {
        case self.redSlider:
            self.redSwitch.onTintColor = UIColor(red: (CGFloat(sender.value)), green: 0, blue: 0, alpha: 1.0)
        case self.greenSlider:
            self.greenSwitch.onTintColor = UIColor(red: 0, green: (CGFloat(sender.value)), blue: 0, alpha: 1.0)
        case self.blueSlider:
            self.blueSwitch.onTintColor = UIColor(red: 0, gr een: 0, blue: CGFloat(sender.value), alpha: 1.0)
        default:
            break
        }
        
        self.colorsLabel.text = String(format: "R: %0.2f, G: %0.2f, B: %0.2f",
                                       self.redSlider.value,
                                       self.greenSlider.value,
                                       self.blueSlider.value)
    }
    
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        let senderState = sender.isOn
        switch sender {
        case self.redSwitch:
            self.redSlider.value = 0.0
            self.redSlider.isUserInteractionEnabled = senderState
        case self.greenSwitch:
            self.greenSlider.value = 0.0
            self.greenSlider.isUserInteractionEnabled = senderState
        case self.blueSwitch:
            self.blueSlider.value = 0.0
            self.blueSlider.isUserInteractionEnabled = senderState
        default:
            break
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let lastTouch = touches.first
        let position = lastTouch?.location(in: self.view)
        print(position)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let lastTouch = touches.first
        let position = lastTouch?.location(in: self.view)
        print(position)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let lastTouch = touches.first
        let position = lastTouch?.location(in: self.view)
        print(position)
    }

}

