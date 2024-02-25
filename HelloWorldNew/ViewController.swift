//
//  ViewController.swift
//  HelloWorldNew
//
//  Created by user on 24.02.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var signalGreen: UIView!
    @IBOutlet var signalYellow: UIView!
    @IBOutlet var signalRed: UIView!
    
    @IBOutlet var startChangeColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signalRed.layer.cornerRadius = 50
        signalYellow.layer.cornerRadius = 50
        signalGreen.layer.cornerRadius = 50

        
        
        startChangeColorButton.layer.cornerRadius = 12
    }
    
    
    
    @IBAction func changeColorButton(_ sender: UIButton) {

        var color = signalRed.alpha
        color = signalYellow.alpha
        color = signalGreen.alpha
        

        
        switch color {
        case signalRed.alpha :
            sender.setTitle("Next", for: .normal)
            signalRed.alpha = 1
            
            
        case signalYellow.alpha :
            sender.setTitle("Next", for: .normal)
            signalRed.alpha = 0.3
            signalYellow.alpha = 1
            
            
        case signalGreen.alpha :
            signalRed.alpha = 0.3
            signalYellow.alpha = 0.3
            signalGreen.alpha = 1
            sender.setTitle("Next", for: .normal)
            
        default:
            sender.setTitle("Start", for: .normal)
        }


    }
    
}

