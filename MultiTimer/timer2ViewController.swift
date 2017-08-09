//
//  timer2ViewController.swift
//  MultiTimer
//
//  Created by Ko Uchida on 08/08/2017.
//  Copyright © 2017 Ko Uchida. All rights reserved.
//

import UIKit
import UIKit
import AVFoundation

class timer2ViewController: UIViewController {
        var seconds = 30
        var timer = Timer()
        var audioPlayer = AVAudioPlayer()

    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var slider2Outlet: UISlider!
    @IBAction func slider2(_ sender: UISlider) {
        seconds = Int(sender.value)
        label2.text = String(seconds) + " Seconds"
    }
    
    @IBOutlet weak var start2Outlet: UIButton!
    @IBAction func start2(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timer2ViewController.counter), userInfo: nil, repeats: true)
        
        slider2Outlet.isHidden = true
        start2Outlet.isHidden = true
    }
    func counter()
    {
        seconds -= 1
        label2.text = String(seconds) + " Seconds"
        
        if (seconds == 0)
        {
            timer.invalidate()
            //            audioPlayer.play()
        }
    }
    @IBOutlet weak var stop2Outlet: UIButton!
    
    @IBAction func stop2(_ sender: Any) {
    
    timer.invalidate()
    seconds = 30
    slider2Outlet.setValue(30, animated: true)
    label2.text = "30 Seconds"
    
    //    audioPlayer.stop()
    
    slider2Outlet.isHidden = false
    start2Outlet.isHidden = false
}
}

    
    
