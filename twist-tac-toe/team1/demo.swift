//
//  demo.swift
//  team1
//
//  Created by student3 on 03/04/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
import UIKit
class demo: UIViewController
{
    
    @IBOutlet weak var B: UIButton!
    @IBAction func BUT(_ sender: Any) {
        B.setImage( UIImage(named:"Cross"),for:UIControlState.normal)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
