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
    
    var note: AVAudioPlayer?
    
    @IBOutlet var c3button: UIButton!
    @IBOutlet var d3button: UIButton!
    @IBOutlet var e3button: UIButton!
    @IBOutlet var f3button: UIButton!
    @IBOutlet var g3button: UIButton!
    @IBOutlet var a4button: UIButton!
    @IBOutlet var b4button: UIButton!
    @IBOutlet var c4button: UIButton!
    @IBOutlet var c3sButton: UIButton!
    @IBOutlet var d3sButton: UIButton!
    @IBOutlet var f3sButton: UIButton!
    @IBOutlet var g3sButton: UIButton!
    @IBOutlet var a4sButton: UIButton!
    @IBOutlet var c4sButton: UIButton!
    
    @IBOutlet var happyBdayButton: UIButton!
    @IBOutlet var jingleBellButton: UIButton!
    @IBOutlet var freeStyleButton: UIButton!
    
    @IBOutlet var noteLabel: UILabel!
    @IBOutlet var noteNumLabel: UILabel!
    
    var noteName = "c3";
    var notesArr:[String] = ["e3", "e3", "e3", "e3", "e3", "e3", "e3", "g3", "c3", "d3", "e3", "f3", "f3", "f3", "f3", "f3", "e3", "e3", "e3", "e3", "d3", "d3", "e3", "d3", "g3", "e3", "e3", "e3", "e3", "e3", "e3", "e3", "g3", "c3", "d3", "e3", "f3", "f3", "f3", "f3", "f3", "f3", "e3", "e3", "e3", "e3", "g3", "g3", "f3", "d3", "c3", "c3"];
    
    var happyBday:[String] = ["c3", "c3", "d3", "c3", "f3", "e3", "c3", "c3", "d3", "c3", "g3", "f3", "c3", "c3", "c4", "a4", "f3", "e3", "d3", "a4s", "a4s", "a4", "f3", "g3", "f3"];
    
    var jingleBells:[String] = ["e3", "e3", "e3", "e3", "e3", "e3", "e3", "g3", "c3", "d3", "e3", "f3", "f3", "f3", "f3", "f3", "e3", "e3", "e3", "e3", "d3", "d3", "e3", "d3", "g3", "e3", "e3", "e3", "e3", "e3", "e3", "e3", "g3", "c3", "d3", "e3", "f3", "f3", "f3", "f3", "f3", "f3", "e3", "e3", "e3", "e3", "g3", "g3", "f3", "d3", "c3", "c3"];
    
    var index = 0;
    var freeStyleCheck = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        noteLabel.isHidden = true;
        noteNumLabel.isHidden = true;
        freeStyleCheck = true;
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
    
    func nextNote(){
        index = index + 1;
        if(index > notesArr.count - 1){
            noteNumLabel.text = "Done!";
            noteLabel.font = noteLabel.font.withSize(20);
            noteLabel.text = "Completed song! Press any note to restart...";
        }
        else{
            noteNumLabel.text = "Note \(index + 1)";
            noteLabel.font = noteLabel.font.withSize(50);
            noteLabel.text = notesArr[index];
        }
    }
    
    func checkNote(s: String) -> Bool{
        if(index > notesArr.count - 1){
            restartNotes();
            return false;
        }
        else if(s == notesArr[index]){
            return true;
        }
        else{
            return false;
        }
    }
    
    func restartNotes(){
        index = 0;
        noteNumLabel.text = "Note \(index + 1)";
        noteLabel.font = noteLabel.font.withSize(50);
        noteLabel.text = notesArr[index];
    }
    
    @IBAction func c3(_sender: UIButton){
        setNote(name: "c3");
        playNote();
        if(freeStyleCheck == false){
            if(checkNote(s: "c3") == true){
                nextNote();
            }
            else{
                restartNotes();
            }
        }
    }
    
    @IBAction func d3(_sender: UIButton){
        setNote(name: "d3");
        playNote();
        if(freeStyleCheck == false){
            if(checkNote(s: "d3") == true){
                nextNote();
            }
            else{
                restartNotes();
            }
        }
    }
    
    @IBAction func e3(_sender: UIButton){
        setNote(name: "e3");
        playNote();
        if(freeStyleCheck == false){
            if(checkNote(s: "e3") == true){
                nextNote();
            }
            else{
                restartNotes();
            }
        }
    }
    
    @IBAction func f3(_sender: UIButton){
        setNote(name: "f3");
        playNote();
        if(freeStyleCheck == false){
            if(checkNote(s: "f3") == true){
                nextNote();
            }
            else{
                restartNotes();
            }
        }
    }
    
    @IBAction func g3(_sender: UIButton){
        setNote(name: "g3");
        playNote();
        if(freeStyleCheck == false){
            if(checkNote(s: "g3") == true){
                nextNote();
            }
            else{
                restartNotes();
            }
        }
    }
    
    @IBAction func a4(_sender: UIButton){
        setNote(name: "a4");
        playNote();
        if(freeStyleCheck == false){
            if(checkNote(s: "a4") == true){
                nextNote();
            }
            else{
                restartNotes();
            }
        }
    }
    
    @IBAction func b4(_sender: UIButton){
        setNote(name: "b4");
        playNote();
        if(freeStyleCheck == false){
            if(checkNote(s: "b4") == true){
                nextNote();
            }
            else{
                restartNotes();
            }
        }
    }
    
    @IBAction func c4(_sender: UIButton){
        setNote(name: "c4");
        playNote();
        if(freeStyleCheck == false){
            if(checkNote(s: "c4") == true){
                nextNote();
            }
            else{
                restartNotes();
            }
        }
    }
    
    @IBAction func c3s(_sender: UIButton){
        print("c3s");
        setNote(name: "c3s");
        playNote();
        if(freeStyleCheck == false){
            if(checkNote(s: "c3s") == true){
                nextNote();
            }
            else{
                restartNotes();
            }
        }
    }
    
    @IBAction func d3s(_sender: UIButton){
        setNote(name: "d3s");
        playNote();
        if(freeStyleCheck == false){
            if(checkNote(s: "d3s") == true){
                nextNote();
            }
            else{
                restartNotes();
            }
        }
    }
    
    @IBAction func f3s(_sender: UIButton){
        setNote(name: "f3s");
        playNote();
        if(freeStyleCheck == false){
            if(checkNote(s: "f3s") == true){
                nextNote();
            }
            else{
                restartNotes();
            }
        }
    }
    
    @IBAction func g3s(_sender: UIButton){
        setNote(name: "g3s");
        playNote();
        if(freeStyleCheck == false){
            if(checkNote(s: "g3s") == true){
                nextNote();
            }
            else{
                restartNotes();
            }
        }
    }
    
    @IBAction func a4s(_sender: UIButton){
        setNote(name: "a4s");
        playNote();
        if(freeStyleCheck == false){
            if(checkNote(s: "a4s") == true){
                nextNote();
            }
            else{
                restartNotes();
            }
        }
    }
    
    @IBAction func c4s(_sender: UIButton){
        setNote(name: "c4s");
        playNote();
        if(freeStyleCheck == false){
            if(checkNote(s: "c4s") == true){
                nextNote();
            }
            else{
                restartNotes();
            }
        }
    }
    
    @IBAction func freeStyle(_sender: UIButton){
        noteLabel.isHidden = true;
        noteNumLabel.isHidden = true;
        freeStyleCheck = true;
    }
    
    @IBAction func jingleBellsButton(_sender: UIButton){
        notesArr = jingleBells;
        index = 0;
        noteLabel.text = notesArr[index];
        noteNumLabel.text = "Note \(index + 1)";
        noteLabel.isHidden = false;
        noteNumLabel.isHidden = false;
        freeStyleCheck = false;
    }
    
    @IBAction func happyBirthdayButton(_sender: UIButton){
        notesArr = happyBday;
        index = 0;
        noteLabel.text = notesArr[index];
        noteNumLabel.text = "Note \(index + 1)";
        noteLabel.isHidden = false;
        noteNumLabel.isHidden = false;
        freeStyleCheck = false;
    }
}

