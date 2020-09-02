//
//  start.swift
//  team1
//
//  Created by student3 on 08/04/19.
//  Copyright © 2019 student. All rights reserved.
//
import UIKit
import Foundation
import AVFoundation
class start: UIViewController
{
    var w = 0
    var q = 0
    @IBOutlet var tap1: UILabel!
    @IBOutlet var imageview: UIImageView!
    @IBOutlet var tap: UIButton!
    var audio2 = AVAudioPlayer()
    
    @IBAction func tap1(_ sender: Any) {
        let s = self.storyboard?.instantiateViewController(withIdentifier: "menu1") as! menu
        self.navigationController?.pushViewController(s, animated: true)
        audio2.pause()
    }
    
    override func viewWillAppear(_ animated:Bool)
    {
        audio2.play()
        audio2.numberOfLoops = 5
        
        self.tap1.alpha = 0.0;
        UIView.animate(withDuration: 0.8, //Time duration you want,
                    delay: 0.0,
                    options: [.curveEaseInOut, .autoreverse, .repeat],
                    animations: { [weak self] in self?.tap1.alpha = 1.0 },
                    completion: { [weak self] _ in self?.tap1.alpha = 0.0 })
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do {
            
            //  make sure to add this sound to your project
            
            let audioPath = Bundle.main.path(forResource: "menuaudio", ofType: "mpeg")
            
            try audio2 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!) as URL)
          
            
        } catch {
            
            print("Error !")
            
        }
        audio2.play()
        audio2.numberOfLoops = 100
        UIView.animate(withDuration: 1, animations: {
            
            self.imageview.center = CGPoint(x: self.imageview.center.x + 500, y: self.imageview.center.y)
        })
        tap.layer.cornerRadius=20
        UIView.animate(withDuration: 0.8,
                       delay:0.0,
                       options:[.allowUserInteraction, .curveEaseInOut, .autoreverse, .repeat],
                       animations: { self.tap1.alpha = 0 },
                       completion: nil)
        
        //UIButton.animate(withDuration: 0.5, animations: {self.tap.=UIColor.cyan})
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
