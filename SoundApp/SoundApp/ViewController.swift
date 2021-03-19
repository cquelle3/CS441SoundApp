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
    @IBOutlet var d3button: UIButton!
    @IBOutlet var e3button: UIButton!
    @IBOutlet var f3button: UIButton!
    @IBOutlet var g3button: UIButton!
    @IBOutlet var a4button: UIButton!
    @IBOutlet var b4button: UIButton!
    @IBOutlet var c4button: UIButton!
    @IBOutlet var c3SharpButton: UIButton!
    @IBOutlet var d3SharpButton: UIButton!
    var noteName = "c3";
    
    var note: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func setNote(name: String){
        noteName = name;
    }
    
    func playNote(){
        let path = Bundle.main.path(forResource: noteName, ofType: "mp3")!;
        let url = URL(fileURLWithPath: path);
        do{
            note = try AVAudioPlayer(contentsOf: url);
        }
        catch{
            print(error)
        }
        note?.play();
    }
    
    @IBAction func c3(_sender: UIButton){
        setNote(name: "c3");
        playNote();
    }
    
    @IBAction func d3(_sender: UIButton){
        setNote(name: "d3");
        playNote();
    }
    
    @IBAction func e3(_sender: UIButton){
        setNote(name: "e3");
        playNote();
    }
    
    @IBAction func f3(_sender: UIButton){
        setNote(name: "f3");
        playNote();
    }
    
    @IBAction func g3(_sender: UIButton){
        setNote(name: "g3");
        playNote();
    }
    
    @IBAction func a4(_sender: UIButton){
        setNote(name: "a4");
        playNote();
    }
    
    @IBAction func b4(_sender: UIButton){
        setNote(name: "b4");
        playNote();
    }
    
    @IBAction func c4(_sender: UIButton){
        setNote(name: "c4");
        playNote();
    }
    
    @IBAction func c3Sharp(_sender: UIButton){
        setNote(name: "c3#");
        playNote();
    }
    
    @IBAction func d3Sharp(_sender: UIButton){
        setNote(name: "d3#");
        playNote();
    }
    
}

