//
//  ViewController.swift
//  Click it or lick it
//
//  Created by Laura Zornosa on 4/8/17.
//  Copyright © 2017 Laura Zornosa. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer!

    @IBAction func click(_ sender: Any) {
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let pathToAlertSound = Bundle.main.path(forResource: "clicker", ofType: "mp3")
        let alertSound = URL(fileURLWithPath: pathToAlertSound!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: alertSound)
        } catch let error {
            print(error.localizedDescription)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
