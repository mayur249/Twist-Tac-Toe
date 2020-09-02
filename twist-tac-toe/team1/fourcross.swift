//
//  fourcross.swift
//  team1
//
//  Created by Dikshit & Mayuresh on 06/04/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
class fourcross: UIViewController {
    
    @IBOutlet weak var randombut1: UIButton!
    @IBOutlet weak var randombut2: UIButton!
    @IBOutlet weak var victorylabel: UILabel!
    @IBOutlet weak var onceagain: UIButton!
    @IBOutlet weak var b11: UIButton!
    @IBOutlet weak var b12: UIButton!
    @IBOutlet weak var b13: UIButton!
    @IBOutlet weak var b14: UIButton!
    @IBOutlet weak var b15: UIButton!
    @IBOutlet weak var b16: UIButton!
    @IBOutlet weak var b17: UIButton!
    @IBOutlet weak var b18: UIButton!
    @IBOutlet weak var b19: UIButton!
    @IBOutlet weak var b20: UIButton!
    @IBOutlet weak var b21: UIButton!
    @IBOutlet weak var b22: UIButton!
    @IBOutlet weak var b23: UIButton!
    @IBOutlet weak var b24: UIButton!
    @IBOutlet weak var b25: UIButton!
    @IBOutlet weak var b26: UIButton!
    var activeGame = true
    var j = 0
    var activePlayer = 1
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] // 0 - empty, 1 - noughts, 2 - crosses
    
    let winningCombinations = [[0, 1, 2, 3], [4, 5, 6, 7], [8, 9, 10, 11], [12, 13, 14, 15], [0, 4, 8, 12], [1, 5, 9, 13], [2, 6, 10, 14], [3, 7, 11, 15], [0, 5, 10, 15], [3, 6, 9, 12]]
    
    var audioPlayer = AVAudioPlayer()
    var a1=AVAudioPlayer()
    @IBAction func onceag(_ sender: Any) {
    
    
        activeGame = true
        z1=0
        activePlayer = 1
        
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        
        b11.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b12.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b13.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b14.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b15.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b16.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b17.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b18.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b19.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b20.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b21.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b22.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b23.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b24.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b25.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b26.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        victorylabel.isHidden = true
        onceagain.isHidden = true
        
        victorylabel.center = CGPoint(x: victorylabel.center.x - 500, y: victorylabel.center.y)
        onceagain.center = CGPoint(x: onceagain.center.x - 500, y: onceagain.center.y)
        
        
    }
    
    // 1 is noughts, 2 is crosses
    
    
    var i=1
    var z1=0
    @IBAction func buttonpress(_ sender: AnyObject)
    {
        do {
            
            //  make sure to add this sound to your project
            
            let audioPath = Bundle.main.path(forResource: "audio", ofType: "mp3")
            
            try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!) as URL)
            
            } catch {
            
            print("Error !")
            
        }
        
        audioPlayer.play()
    
        let activePosition = sender.tag - 1
        
        if gameState[activePosition] == 0 && activeGame
        {
            gameState[activePosition] = activePlayer
            if activePlayer == 1
            {
                sender.setImage(UIImage(named: "nought.png"), for: [])
                activePlayer = 2
            }
            else
            {
                sender.setImage(UIImage(named: "cross.png"), for: [])
                activePlayer = 1
            }
        }
        
        if(gameState[0]==1 && gameState[1]==1 && gameState[2]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.isHidden = false
            onceagain.isHidden = false
            victorylabel.text = "Nought has won!"
            activeGame = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        if(gameState[1]==1 && gameState[2]==1 && gameState[3]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            victorylabel.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        
        //random1
        var m1=1
        if(m1==1 && z1==0)
        {
            if(gameState[4]==0 && gameState[5]==1 && gameState[6]==1 && gameState[7]==2)
            {
                randombut1.isHidden=false
                randombut2.isHidden=false
                m1=0
            }
        }
        
        if(gameState[0]==1 && gameState[4]==1 && gameState[8]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        if(gameState[0]==1 && gameState[5]==1 && gameState[10]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        
        //random2
        var m2=1
        if(m2==1 && z1==0)
        {
            if(gameState[5]==1 && gameState[10]==1 && gameState[15]==0 && gameState[0]==2)
            {
                randombut1.isHidden=false
                randombut2.isHidden=false
                m2=0
            }
        }
        
        if(gameState[1]==1 && gameState[5]==1 && gameState[9]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        if(gameState[1]==1 && gameState[6]==1 && gameState[11]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        
        //random3
        var m3=1
        if(m3==1 && z1==0)
        {
            if(gameState[6]==1 && gameState[9]==1 && gameState[12]==2 && gameState[3]==0)
            {
                randombut1.isHidden=false
                randombut2.isHidden=false
                m3=0
            }
        }
        
        if(gameState[2]==1 && gameState[6]==1 && gameState[10]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        if(gameState[2]==1 && gameState[5]==1 && gameState[8]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        
        //random4
        var m4=1
        if(m4==1 && z1==0)
        {
            if(gameState[11]==1 && gameState[7]==1 && gameState[15]==0 && gameState[3]==2)
            {
                randombut1.isHidden=false
                randombut2.isHidden=false
                m4=0
            }
        }
        
        if(gameState[3]==1 && gameState[7]==1 && gameState[11]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        if(gameState[3]==1 && gameState[6]==1 && gameState[9]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        if(gameState[4]==1 && gameState[8]==1 && gameState[12]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        
        //random5
        var m5=1
        if(m5==1 && z1==0)
        {
            if(gameState[5]==1 && gameState[9]==1 && gameState[1]==0 && gameState[13]==2)
            {
                randombut1.isHidden=false
                randombut2.isHidden=false
                m5=0
            }
        }
        
        if(gameState[4]==1 && gameState[9]==1 && gameState[14]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        
        if(gameState[5]==1 && gameState[9]==1 && gameState[13]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        
        if(gameState[5]==1 && gameState[10]==1 && gameState[15]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        
        if(gameState[6]==1 && gameState[10]==1 && gameState[14]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[6]==1 && gameState[9]==1 && gameState[12]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[7]==1 && gameState[11]==1 && gameState[15]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[7]==1 && gameState[10]==1 && gameState[13]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[4]==1 && gameState[5]==1 && gameState[6]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        
        if(gameState[5]==1 && gameState[6]==1 && gameState[7]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[8]==1 && gameState[9]==1 && gameState[10]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[9]==1 && gameState[10]==1 && gameState[11]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[13]==1 && gameState[14]==1 && gameState[15]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[12]==1 && gameState[13]==1 && gameState[14]==1)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Nought has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        //secondplayer
        if(gameState[0]==2 && gameState[1]==2 && gameState[2]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        
        //random6
        var m6=1
        if(m6==1 && z1==0)
        {
            if(gameState[9]==2 && gameState[10]==2 && gameState[8]==0 && gameState[11]==1)
            {
                randombut1.isHidden=false
                randombut2.isHidden=false
                m6=0
            }
        }
        
        if(gameState[1]==2 && gameState[2]==2 && gameState[3]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        //random7
        var m7=1
        if(m7==1 && z1==0)
        {
            if(gameState[5]==2 && gameState[10]==2 && gameState[15]==1 && gameState[0]==0)
            {
                randombut1.isHidden=false
                randombut2.isHidden=false
                m7=0
            }
        }
        if(gameState[0]==2 && gameState[4]==2 && gameState[8]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        //random8
        var m8=1
        if(m8==1 && z1==0)
        {
            if(gameState[6]==2 && gameState[9]==2 && gameState[12]==0 && gameState[3]==1)
            {
                randombut1.isHidden=false
                randombut2.isHidden=false
                m8=0
            }
        }
        if(gameState[0]==2 && gameState[5]==2 && gameState[10]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        //random9
        var m9=1
        if(m9==1 && z1==0)
        {
            if(gameState[11]==2 && gameState[7]==2 && gameState[15]==1 && gameState[3]==0)
            {
                randombut1.isHidden=false
                randombut2.isHidden=false
                m9=0
            }
        }
        if(gameState[1]==2 && gameState[5]==2 && gameState[9]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        //random10
        var m10=1
        if(m10==1 && z1==0)
        {
            if(gameState[5]==2 && gameState[9]==2 && gameState[1]==1 && gameState[13]==0)
            {
                randombut1.isHidden=false
                randombut2.isHidden=false
                m10=0
            }
        }
        if(gameState[1]==2 && gameState[6]==2 && gameState[11]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        if(gameState[2]==2 && gameState[6]==2 && gameState[10]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        if(gameState[2]==2 && gameState[5]==2 && gameState[8]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
            })
            }
            z1=1
        }
        if(gameState[3]==2 && gameState[7]==2 && gameState[11]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[3]==2 && gameState[6]==2 && gameState[9]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[4]==2 && gameState[8]==2 && gameState[12]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[4]==2 && gameState[9]==2 && gameState[14]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[5]==2 && gameState[9]==2 && gameState[13]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[5]==2 && gameState[10]==2 && gameState[15]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[6]==2 && gameState[10]==2 && gameState[14]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[6]==2 && gameState[9]==2 && gameState[12]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[7]==2 && gameState[11]==2 && gameState[15]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[7]==2 && gameState[10]==2 && gameState[13]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[4]==2 && gameState[5]==2 && gameState[6]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[5]==2 && gameState[6]==2 && gameState[7]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[8]==2 && gameState[9]==2 && gameState[10]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[9]==2 && gameState[10]==2 && gameState[11]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[12]==2 && gameState[13]==2 && gameState[14]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        if(gameState[13]==2 && gameState[14]==2 && gameState[15]==2)
        {
            randombut1.isHidden=true
            randombut2.isHidden=true
            victorylabel.text = "Cross has won!"
            activeGame = false
            victorylabel.isHidden = false
            onceagain.isHidden = false
            if(z1==0)
            {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
            }
            z1=1
        }
        var count=0
        for j in 0...15
        {
            if(gameState[j] != 0)
            {
                count=count+1
            }
        }
        if(count==16)
        {
            if(!((gameState[0]==1 && gameState[1]==1 && gameState[2]==1)||(gameState[1]==1 && gameState[2]==1 && gameState[3]==1)||(gameState[0]==1 && gameState[4]==1 && gameState[8]==1)||(gameState[0]==1 && gameState[5]==1 && gameState[10]==1)||(gameState[1]==1 && gameState[5]==1 && gameState[9]==1)||(gameState[1]==1 && gameState[6]==1 && gameState[11]==1)||(gameState[2]==1 && gameState[6]==1 && gameState[10]==1)||(gameState[2]==1 && gameState[5]==1 && gameState[8]==1)||(gameState[3]==1 && gameState[7]==1 && gameState[11]==1)||(gameState[3]==1 && gameState[6]==1 && gameState[9]==1)||(gameState[4]==1 && gameState[8]==1 && gameState[12]==1)||(gameState[4]==1 && gameState[9]==1 && gameState[14]==1)||(gameState[5]==1 && gameState[9]==1 && gameState[13]==1)||(gameState[5]==1 && gameState[10]==1 && gameState[15]==1)||(gameState[6]==1 && gameState[10]==1 && gameState[14]==1)||(gameState[6]==1 && gameState[9]==1 && gameState[12]==1)||(gameState[7]==1 && gameState[11]==1 && gameState[15]==1)||(gameState[7]==1 && gameState[10]==1 && gameState[13]==1)||(gameState[4]==1 && gameState[5]==1 && gameState[6]==1)||(gameState[5]==1 && gameState[6]==1 && gameState[7]==1)||(gameState[8]==1 && gameState[9]==1 && gameState[10]==1)||(gameState[9]==1 && gameState[10]==1 && gameState[11]==1)||(gameState[12]==1 && gameState[13]==1 && gameState[14]==1)||(gameState[13]==1 && gameState[14]==1 && gameState[15]==1)||(gameState[0]==2 && gameState[1]==2 && gameState[2]==2)||(gameState[1]==2 && gameState[2]==2 && gameState[3]==2)||(gameState[0]==2 && gameState[4]==2 && gameState[8]==2)||(gameState[0]==2 && gameState[5]==2 && gameState[10]==2)||(gameState[1]==2 && gameState[5]==2 && gameState[9]==2)||(gameState[1]==2 && gameState[6]==2 && gameState[11]==2)||(gameState[2]==2 && gameState[6]==2 && gameState[10]==2)||(gameState[2]==2 && gameState[5]==2 && gameState[8]==2)||(gameState[3]==2 && gameState[7]==2 && gameState[11]==2)||(gameState[3]==2 && gameState[6]==2 && gameState[9]==2)||(gameState[4]==2 && gameState[8]==2 && gameState[12]==2)||(gameState[4]==2 && gameState[9]==2 && gameState[14]==2)||(gameState[5]==2 && gameState[9]==2 && gameState[13]==2)||(gameState[5]==2 && gameState[10]==2 && gameState[15]==2)||(gameState[6]==2 && gameState[10]==2 && gameState[14]==2)||(gameState[6]==2 && gameState[9]==2 && gameState[12]==2)||(gameState[7]==2 && gameState[11]==2 && gameState[15]==2)||(gameState[7]==2 && gameState[10]==2 && gameState[13]==2)||(gameState[4]==2 && gameState[5]==2 && gameState[6]==2)||(gameState[5]==2 && gameState[6]==2 && gameState[7]==2)||(gameState[8]==2 && gameState[9]==2 && gameState[10]==2)||(gameState[9]==2 && gameState[10]==2 && gameState[11]==2)||(gameState[12]==2 && gameState[13]==2 && gameState[14]==2)||(gameState[13]==2 && gameState[14]==2 && gameState[15]==2)))
            {
                randombut2.isHidden=true
                randombut1.isHidden=true
                victorylabel.text = "IT'S A DRAW!"
                activeGame = false
                victorylabel.isHidden = false
                onceagain.isHidden = false
                if(z1==0)
                {
                UIView.animate(withDuration: 1, animations: {
                    
                    self.victorylabel.center = CGPoint(x: self.victorylabel.center.x + 500, y: self.victorylabel.center.y)
                    self.onceagain.center = CGPoint(x: self.onceagain.center.x + 500, y: self.onceagain.center.y)
                })
                }
                z1=1
            }
        }
    }
    
    
    @IBAction func randomact1(_ sender: Any) {
        randombut2.isHidden=true
        activePlayer=1
        randombut1.isHidden=true
    }
    
    
    @IBAction func randomact2(_ sender: Any) {
        randombut2.isHidden=true
        activePlayer=2
        randombut1.isHidden=true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randombut1.layer.cornerRadius=20
        randombut2.layer.cornerRadius=20
        onceagain.layer.cornerRadius=20
        do {
            
            let audioP = Bundle.main.path(forResource: "background", ofType: "mp3")
            
            try a1 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioP!) as URL)
            
            
            
        } catch {
            
            print("Error !")
            
        }
        
        
        a1.play()
        a1.numberOfLoops = 100
        randombut1.isHidden=true
        randombut2.isHidden=true
        victorylabel.isHidden = true
        onceagain.isHidden = true
        
        victorylabel.center = CGPoint(x:victorylabel .center.x - 500, y: victorylabel.center.y)
        onceagain.center = CGPoint(x: onceagain.center.x - 500, y: onceagain.center.y)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

