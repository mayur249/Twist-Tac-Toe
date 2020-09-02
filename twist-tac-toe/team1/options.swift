//
//  options.swift
//  team1
//
//  Created by student3 on 08/04/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
class options:UIViewController
{
    
    @IBOutlet var th3: UIButton!
    
    @IBOutlet var th4: UIButton!
    var audio1 = AVAudioPlayer()
    
    @IBAction func three(_ sender: Any) {
        let s3 = self.storyboard?.instantiateViewController(withIdentifier: "threecross") as! ViewController
        self.navigationController?.pushViewController(s3, animated: true)
        audio1.pause()
    }
    
    @IBAction func four(_ sender: Any) {
        let s4 = self.storyboard?.instantiateViewController(withIdentifier: "fourcross1") as! fourcross
        self.navigationController?.pushViewController(s4, animated: true)
        audio1.pause()
    }
    
    override func viewWillAppear(_ animated:Bool)
    {
        audio1.play()
        audio1.numberOfLoops = 5
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            th3.layer.cornerRadius=20
            th4.layer.cornerRadius=20
        do {
            
            //  make sure to add this sound to your project
            
            let audioPath = Bundle.main.path(forResource: "menuaudio", ofType: "mpeg")
            
            try audio1 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!) as URL)
            
            
        } catch {
            
            print("Error !")
            
        }
        
        audio1.play()
        audio1.numberOfLoops = 100
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
