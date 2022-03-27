//
//  ViewController.swift
//  The Ligth
//
//  Created by Михаил Иванов on 20.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn: Int = 1
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //MARK: - Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    // Traffic lights red, yellow, green 
    
    fileprivate func updateUI() {
        if isLightOn == 1 {
            view.backgroundColor = .red
        } else if isLightOn == 2 {
            view.backgroundColor = .yellow
        } else {
            view.backgroundColor = .green
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        isLightOn += 1
        updateUI()
        if isLightOn == 3 {
            isLightOn = 0
        }
    }
    
}

