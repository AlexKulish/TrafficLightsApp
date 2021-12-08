//
//  ViewController.swift
//  TrafficLightsApp
//
//  Created by Alex Kulish on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    var counterOfClick = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        startButton.setTitle("START", for: .normal)
        startButton.layer.cornerRadius = 20
    }
    
    @IBAction func pressedButton() {
        startButton.setTitle("NEXT", for: .normal)
        counterOfClick += 1
        
        redLightView.layer.cornerRadius = redLightView.layer.bounds.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.layer.bounds.width / 2
        greenLightView.layer.cornerRadius = greenLightView.layer.bounds.width / 2
        
        if counterOfClick % 3 == 1 {
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
        } else if counterOfClick % 3 == 2 {
            yellowLightView.alpha = 1
            redLightView.alpha = 0.3
        } else if counterOfClick % 3 == 0 {
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.3
        }
    }
}

