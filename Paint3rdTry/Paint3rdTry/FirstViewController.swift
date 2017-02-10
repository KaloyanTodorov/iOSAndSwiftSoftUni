//
//  FirstViewController.swift
//  Paint3rdTry
//
//  Created by  Калоян Тодоров on 2/9/17.
//  Copyright © 2017  Калоян Тодоров. All rights reserved.
//

import UIKit
import CoreGraphics

class FirstViewController: UIViewController {

    var sliderColor: UIColor?
    var previousTouch: CGPoint?
    @IBOutlet weak var drawView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // drawView.sliderColor = sliderColor
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func drawLine(_ begin: CGPoint, end: CGPoint) {
        UIGraphicsBeginImageContext(self.view.frame.size)
        
        let context = UIGraphicsGetCurrentContext()
        self.drawView!.image?.draw(in: self.view.frame)
        
        context?.move(to: begin)
        context?.addLine(to: end)
        context?.setStrokeColor((sliderColor?.cgColor)!)
        context?.setLineWidth(4.0)
        context?.setLineCap(.round)
        context?.strokePath()
        context?.setBlendMode(.normal)
        
        self.drawView!.image = UIGraphicsGetImageFromCurrentImageContext()
        self.drawView!.alpha = 1.0
        UIGraphicsEndImageContext()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        let lastTouch = touches.first
        let position = lastTouch?.location(in: self.drawView)
        // print(position)
        
        self.previousTouch = position
        drawLine(self.previousTouch!, end: position!)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let lastTouch = touches.first
        let position = lastTouch?.location(in: self.drawView)
        // print(position)
        
        drawLine(self.previousTouch!, end: position!)
        self.previousTouch = position
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let lastTouch = touches.first
        let position = lastTouch?.location(in: self.drawView)
        
        drawLine(self.previousTouch!, end: position!)
        self.previousTouch = position
        print(position)
    }

}

