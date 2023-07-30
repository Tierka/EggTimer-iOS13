//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var letTime: Int = 0
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 9]
    var second = 0
    
    override func viewDidLoad() {
       super.viewDidLoad()
    }

    @IBAction func hardnessSelector(_ sender: UIButton) {
        timer.invalidate()
        let hardnessEgg = sender.currentTitle!
        letTime = eggTimes[hardnessEgg]!
        timer  = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(startTimer), userInfo: nil, repeats: true)
    }
    
    @objc func startTimer(){
        
        if second < letTime {
            second += 1
            print("timer is: \(letTime - second)")
        } else {
            timer.invalidate()
        }
        
    }
}
