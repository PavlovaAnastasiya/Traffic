//
//  ViewController.swift
//  Traffic
//
//  Created by Pavlova on 26.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var lightColor: Int = 0
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        }
    
    fileprivate func updateUI() {
        switch lightColor {
        case 0:
            view.backgroundColor = .red
        case 1:
            view.backgroundColor = .yellow
        case 2:
            view.backgroundColor = .green
        default:
            view.backgroundColor = .red
            lightColor = 0
        }
    }
    
    
    
    @IBAction func buttonPressed(_ sender: Any, forEvent event: UIEvent) {
        
        lightColor += 1
        updateUI()
        
    }
    

}

