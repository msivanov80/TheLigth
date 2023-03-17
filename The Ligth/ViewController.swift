//
//  ViewController.swift
//  The Ligth
//
//  Created by Михаил Иванов on 20.03.2022.
//

import UIKit
import AVFoundation
var isLighth = false

class ViewController: UIViewController {
    
    var isLightOn: Int = 1
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    //MARK: - Method
    
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
            view.backgroundColor = .cyan
        case 6:
            view.backgroundColor = .blue
        default:
            view.backgroundColor = .purple
        }
    }
    
    func toggleTorch(on: Bool) {
        guard let device = AVCaptureDevice.default(for: .video) else { return }

        if device.hasTorch {
            do {
                try device.lockForConfiguration()

                if on == true {
                    device.torchMode = .on
                } else {
                    device.torchMode = .off
                }

                device.unlockForConfiguration()
            } catch {
                print("Torch could not be used")
            }
        } else {
            print("Torch is not available")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        isLightOn += 1
        updateUI()
        if isLightOn == 7 {
            isLightOn = 0
        }
    }
    
    
    @IBAction func pressedButton() {
        isLighth.toggle()
        toggleTorch(on: isLighth)
    }
    
}

