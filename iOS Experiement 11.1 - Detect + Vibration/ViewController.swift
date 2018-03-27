//
//  ViewController.swift
//  iOS Experiement 11.1 - Detect + Vibration
//
//  Created by mac on 3/26/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    override func becomeFirstResponder() -> Bool {
        return true
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            let instance = UIAlertController(title: "Bryantle", message: "You are shaking", preferredStyle: UIAlertControllerStyle.alert)
            instance.addAction(UIAlertAction(title: "You are shaking", style: UIAlertActionStyle.default, handler: nil))
            self.present(instance, animated: true, completion: nil)
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

