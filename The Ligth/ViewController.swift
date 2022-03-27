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


    
    fileprivate func updateUI() {
        switch isLightOn {
        case 1:
            view.backgroundColor = .red
        case 2:
            view.backgroundColor = .orange
        case 3:
            view.backgroundColor = .yellow
        case 4:
            view.backgroundColor = .green
        case 5:
            view.backgroundColor = .blue
        default:
            view.backgroundColor = .purple
        }
        
        
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        isLightOn += 1
        updateUI()
        if isLightOn == 6 {
            isLightOn = 0
        }
    }
    
}

