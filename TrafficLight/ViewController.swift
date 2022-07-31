//
//  ViewController.swift
//  TrafficLight
//
//  Created by Дмитрий Солопов on 30.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        redLight.layer.cornerRadius = 65
        yellowLight.layer.cornerRadius = 65
        greenLight.layer.cornerRadius = 65
        
        button.layer.cornerRadius = 15
        
    }
    
    @IBAction func buttonPressed() {
        
        if redLight.alpha != 1 && yellowLight.alpha != 1 {
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            button.setTitle("NEXT", for: .normal)
        } else if yellowLight.alpha != 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
        } else if greenLight.alpha != 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        }
    }
}

