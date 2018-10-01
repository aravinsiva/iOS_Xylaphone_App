//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

var SoundEffect: AVAudioPlayer?

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        

        let path = Bundle.main.path(forResource: "note\(sender.tag).wav", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            SoundEffect = try AVAudioPlayer(contentsOf: url)
            SoundEffect?.play()
        } catch {
            // couldn't load file :(
        }
    }
    
  

}

