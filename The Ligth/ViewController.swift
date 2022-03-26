//
//  ViewController.swift
//  The Ligth
//
//  Created by Михаил Иванов on 20.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = true
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //MARK: - Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    
    fileprivate func updateUI() {
        view.backgroundColor = isLightOn ? .white : .black
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
        isLightOn.toggle()
        updateUI()
    }
}

