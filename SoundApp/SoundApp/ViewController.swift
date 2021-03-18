//
//  ViewController.swift
//  SoundApp
//
//  Created by Colin Quelle on 3/17/21.
//  Copyright © 2021 Colin Quelle. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var c3button: UIButton!
    
    var note: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func c3(_sender: UIButton){
        print(Bundle.main.path(forResource: "c3", ofType: "mp3")!);
    }
    
}

