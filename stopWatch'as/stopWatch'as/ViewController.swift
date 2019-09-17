//
//  ViewController.swift
//  stopWatch'as
//
//  Created by Arturas Zube on 17/9/19.
//  Copyright © 2019 Arturas Zube. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 0
    var timer = Timer()

    @IBOutlet weak var timerLabel: UILabel!

    @IBAction func startBtn(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseBtn(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        timer.invalidate()
        time = 0
        timerLabel.text = String("0")
    }
    @objc func action() {
        time += 1
        timerLabel.text = String(time)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

