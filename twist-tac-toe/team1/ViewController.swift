//
//  ViewController.swift
//  team1
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var but2: UIButton!
    var activeGame = true
    var j = 0
    var activePlayer = 1
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] // 0 - empty, 1 - noughts, 2 - crosses
    
    let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    
    //var sound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "audio", ofType: "mp3")!)

    var audioPlayer = AVAudioPlayer()
    var a=AVAudioPlayer()
    
    @IBOutlet var winnerLabel: UILabel!
    @IBOutlet var playAgainButton: UIButton!
    
    
    @IBOutlet weak var b1: UIButton!
    
    @IBOutlet weak var b2: UIButton!
    
    @IBOutlet weak var b3: UIButton!
    
    @IBOutlet weak var b4: UIButton!
    
    @IBOutlet weak var b5: UIButton!
    
    @IBOutlet weak var b6: UIButton!
    
    @IBOutlet weak var b7: UIButton!
    
    @IBOutlet weak var b8: UIButton!
    
    @IBOutlet weak var b9: UIButton!
    
    @IBAction func playAgain(_ sender: AnyObject) {
        
        activeGame = true
        
        activePlayer = 1
        
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        z=0
        
        b1.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b2.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b3.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b4.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b5.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b6.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b7.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b8.setImage(UIImage(named:"blank"),for:UIControlState.normal)
        b9.setImage(UIImage(named:"blank"),for:UIControlState.normal)
            
            winnerLabel.isHidden = true
            playAgainButton.isHidden = true
            
            winnerLabel.center = CGPoint(x: winnerLabel.center.x - 500, y: winnerLabel.center.y)
            playAgainButton.center = CGPoint(x: playAgainButton.center.x - 500, y: playAgainButton.center.y)
            
       // }
        
        
    }
    
    // 1 is noughts, 2 is crosses
    
 var z=0
 var i=1
    @IBAction func buttonPressed(_ sender: AnyObject)
    {
        //activeGame = true
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
            but1.isHidden=true
            but2.isHidden=true
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            winnerLabel.text = "Noughts has won!"
            activeGame = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                })
                z=1
            }
        }
        //random
        if(i==1 && z==0)
        {
         if(gameState[0]==2 && gameState[2]==1 && gameState[7]==2 && gameState[5]==1 )
         {
            but1.isHidden=false
            but2.isHidden=false
            i=0
         }
        }
        if(gameState[3]==1 && gameState[4]==1 && gameState[5]==1)
        {
            but1.isHidden=true
            but2.isHidden=true
            winnerLabel.text = "Noughts has won!"
            activeGame = false
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                })
            }
            z=1
        }
        if(gameState[6]==1 && gameState[7]==1 && gameState[8]==1)
        {
            but1.isHidden=true
            but2.isHidden=true
            winnerLabel.text = "Noughts has won!"
            activeGame = false
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                })
            }
            z=1
        }
        //random2
        var k = 1
        if(k==1 && z==0)
        {
            if(gameState[1]==2 && gameState[4]==2 && gameState[7]==0)
            {
                but1.isHidden=false
                but2.isHidden=false
                k=0
            }
        }
        if(gameState[0]==1 && gameState[3]==1 && gameState[6]==1)
        {
            but1.isHidden=true
            but2.isHidden=true
            winnerLabel.text = "Noughts has won!"
            activeGame = false
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                })
            }
            z=1
        }
        if(gameState[1]==1 && gameState[4]==1 && gameState[7]==1)
        {
            but1.isHidden=true
            but2.isHidden=true
            winnerLabel.text = "Noughts has won!"
            activeGame = false
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                })
            }
            z=1
        }
        if(gameState[2]==1 && gameState[5]==1 && gameState[8]==1)
        {
            but1.isHidden=true
            but2.isHidden=true
            winnerLabel.text = "Noughts has won!"
            activeGame = false
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                })
            }
            z=1
        }
        //random3
        var l = 1
        if(l==1 && z==0)
        {
            if(gameState[0]==1 && gameState[4]==0 && gameState[8]==1)
            {
                but1.isHidden=false
                but2.isHidden=false
                l=0
            }
        }
        if(gameState[0]==1 && gameState[4]==1 && gameState[8]==1)
        {
            but1.isHidden=true
            but2.isHidden=true
            winnerLabel.text = "Noughts has won!"
            activeGame = false
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                })
            }
            z=1
        }
        if(gameState[2]==1 && gameState[4]==1 && gameState[6]==1)
        {
            but1.isHidden=true
            but2.isHidden=true
            winnerLabel.text = "Noughts has won!"
            activeGame = false
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                })
            }
            z=1
        }
        if(gameState[0]==2 && gameState[1]==2 && gameState[2]==2)
        {
            but1.isHidden=true
            but2.isHidden=true
            winnerLabel.text = "Cross has won!"
            activeGame = false
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                })
            }
            z=1
        }
        //random4
        var m=1
        if(m==1 && z==0)
        {
            if(gameState[0]==1 && gameState[2]==2 && gameState[3]==1 && gameState[4]==1 && gameState[6]==2 && gameState[8]==2)
            {
                but1.isHidden=false
                but2.isHidden=false
                m=0
            }
        }
        if(gameState[3]==2 && gameState[4]==2 && gameState[5]==2)
        {
            but1.isHidden=true
            but2.isHidden=true
            winnerLabel.text = "Cross has won!"
            activeGame = false
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                })
            }
            z=1
        }
        if(gameState[6]==2 && gameState[7]==2 && gameState[8]==2)
        {
            but1.isHidden=true
            but2.isHidden=true
            winnerLabel.text = "Cross has won!"
            activeGame = false
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                })
            }
            z=1
        }
        if(gameState[0]==2 && gameState[3]==2 && gameState[6]==2)
        {
            but1.isHidden=true
            but2.isHidden=true
            winnerLabel.text = "Cross has won!"
           activeGame = false
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
            })
            }
            z=1
        }
        if(gameState[1]==2 && gameState[4]==2 && gameState[7]==2)
        {
            but1.isHidden=true
            but2.isHidden=true
            winnerLabel.text = "Cross has won!"
            activeGame = false
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                })
            }
            z=1
        }
        if(gameState[2]==2 && gameState[5]==2 && gameState[8]==2)
        {
            but1.isHidden=true
            but2.isHidden=true
            winnerLabel.text = "Cross has won!"
            activeGame = false
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                })
            }
            z=1
        }
        if(gameState[0]==2 && gameState[4]==2 && gameState[8]==2)
        {
            but1.isHidden=true
            but2.isHidden=true
            winnerLabel.text = "Cross has won!"
         activeGame = false
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                })
            }
            z=1
        }
        if(gameState[2]==2 && gameState[4]==2 && gameState[6]==2)
        {
            but1.isHidden=true
            but2.isHidden=true
            winnerLabel.text = "Cross has won!"
            activeGame = false
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                })
            }
            z=1
        }
        
        var count=0
        for j in 0...8
        {
            if(gameState[j] != 0)
            {
                count=count+1
            }
        }
        if(count==9)
        {
        if(!((gameState[0]==1 && gameState[1]==1 && gameState[2]==1) || (gameState[3]==1 && gameState[4]==1 && gameState[5]==1) || (gameState[6]==1 && gameState[7]==1 && gameState[8]==1) || (gameState[0]==1 && gameState[3]==1 && gameState[6]==1) || (gameState[1]==1 && gameState[4]==1 && gameState[7]==1) || (gameState[2]==1 && gameState[5]==1 && gameState[8]==1) || (gameState[0]==1 && gameState[4]==1 && gameState[8]==1) || (gameState[2]==1 && gameState[4]==1 && gameState[6]==1) || (gameState[0]==2 && gameState[1]==2 && gameState[2]==2) || (gameState[3]==2 && gameState[4]==2 && gameState[5]==2) || (gameState[6]==2 && gameState[7]==2 && gameState[8]==2) || (gameState[0]==2 && gameState[3]==2 && gameState[6]==2) || (gameState[1]==2 && gameState[4]==2 && gameState[7]==2) || (gameState[2]==2 && gameState[5]==2 && gameState[8]==2) || (gameState[0]==2 && gameState[4]==2 && gameState[8]==2) || (gameState[2]==2 && gameState[4]==2 && gameState[6]==2)))
        {
            but2.isHidden=true
            but1.isHidden=true
            winnerLabel.text = "IT'S A DRAW!"
            activeGame = false
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if(z==0)
            {
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
            })
            }
            z=1
        }
        }
        }
    
    @IBAction func but1act(_ sender: Any) {
        but2.isHidden=true
        activePlayer=1
        but1.isHidden=true
    }
    
    @IBAction func but2act(_ sender: Any) {
        but1.isHidden=true
        activePlayer=2
        but2.isHidden=true
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        but1.layer.cornerRadius=20
        but2.layer.cornerRadius=20
        playAgainButton.layer.cornerRadius=20
        do {
            
            let audioP = Bundle.main.path(forResource: "background", ofType: "mp3")
            
            try a = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioP!) as URL)
            
            
            
        } catch {
            
            print("Error !")
            
        }
        
        
        a.play()
        a.numberOfLoops = 100
       
        but1.isHidden=true
        but2.isHidden=true
        winnerLabel.isHidden = true
        playAgainButton.isHidden = true
        
        winnerLabel.center = CGPoint(x: winnerLabel.center.x - 500, y: winnerLabel.center.y)
        playAgainButton.center = CGPoint(x: playAgainButton.center.x - 500, y: playAgainButton.center.y)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

