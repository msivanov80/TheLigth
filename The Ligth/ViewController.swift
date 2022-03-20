//
//  ViewController.swift
//  The Ligth
//
//  Created by Михаил Иванов on 20.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = false
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    
    fileprivate func updateUI() {
        view.backgroundColor = isLightOn ? .white : .black
        
    }
    
    @IBAction func buttonPressed() {
        isLightOn.toggle()
        updateUI()
    }
    
}

