//
//  menu.swift
//  team1
//
//  Created by student3 on 08/04/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
class menu:UIViewController
{
    
    @IBOutlet var newgame: UIButton!
    @IBOutlet var about: UIButton!
    @IBOutlet var help: UIButton!
    var audio = AVAudioPlayer()
     //let layer = CAGradientLayer()
    
    @IBAction func new1(_ sender: Any) {
        let s1 = self.storyboard?.instantiateViewController(withIdentifier: "options1") as! options
        self.navigationController?.pushViewController(s1, animated: true)
        audio.pause()
    }
    
    @IBAction func help1(_ sender: Any) {
        let s3 = self.storyboard?.instantiateViewController(withIdentifier: "help11") as! help
        self.navigationController?.pushViewController(s3, animated: true)
        
        
    }

    @IBAction func about1(_ sender: Any) {
        let s2 = self.storyboard?.instantiateViewController(withIdentifier: "about1") as! about
        self.navigationController?.pushViewController(s2, animated: true)
    }
    
    override func viewWillAppear(_ animated:Bool)
    {
        audio.play()
        audio.numberOfLoops = 100
    }
    override func viewDidLoad() {
        super.viewDidLoad()
            newgame.layer.cornerRadius=20
            help.layer.cornerRadius=20
            about.layer.cornerRadius=20
        do {
            
            //  make sure to add this sound to your project
            
            let audioPath = Bundle.main.path(forResource: "menuaudio", ofType: "mpeg")
            
            try audio = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!) as URL)
            
            
        } catch {
            
            print("Error !")
            
        }
        
        audio.play()
        audio.numberOfLoops = 5
    
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
