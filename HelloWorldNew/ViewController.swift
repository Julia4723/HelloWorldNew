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
        signalRed.alpha = 0.3
        signalYellow.alpha = 0.3
        signalGreen.alpha = 0.3
        
        startChangeColorButton.layer.cornerRadius = 12
    }
    
    var counter = 0
    
    
    @IBAction func changeColorSignal(_ sender: UIButton) {
        counter += 1
        
        switch counter {
        case 1:
            sender.setTitle("Next", for: .normal)
            signalRed.alpha = 1
        case 2:
            signalRed.alpha = 0.3
            signalYellow.alpha = 1
        case 3:
            signalYellow.alpha = 0.3
            signalGreen.alpha = 1
        default:
            signalGreen.alpha = 0.3
            counter = 0
           
        }
    }
}

        
        
      //Через if else  не получилось
        /*
            if signalRed.alpha == 0.3 && signalYellow.alpha == 0.3 && signalGreen.alpha == 0.3 {
            signalRed.alpha = 1
            sender.setTitle("Next", for: .normal)
                continue
            } else if signalRed.alpha == 1 {
            signalRed.alpha = 0.3
            signalYellow.alpha = 1
                continue
            } else if signalYellow.alpha == 1 {
            signalYellow.alpha = 0.3
            signalGreen.alpha = 1
                continue
            } else if signalGreen.alpha == 1 {
            signalGreen.alpha = 0.3
            }
        */
         
