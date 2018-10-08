//
//  ViewController.swift
//  ShowRandomColor
//
//  Created by Russell Archer on 05/10/2018.
//  Copyright © 2018 Russell Archer. All rights reserved.
//

import UIKit
import ColorGenerator
import Intents

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setColor()
    }
    
    func setColor() {
        let colorInfo = Generate.randomColor()
        colorView.backgroundColor = colorInfo.color
        
        donateIntent()
    }
    
    func donateIntent() {
        let intent = ShowRandomColorIntent()
        
        intent.suggestedInvocationPhrase = "Random color"
        let interaction = INInteraction(intent: intent, response: nil)
        
        interaction.donate { (error) in
            if error != nil {
                print("Intent donation failed")
            }
        }
    }
}

