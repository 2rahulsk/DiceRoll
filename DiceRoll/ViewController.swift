//
//  ViewController.swift
//  DiceRoll
//
//  Created by Rahul Krishnan on 6/2/19.
//  Copyright © 2019 Rahul Krishnan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImage1: UIImageView!
    
    @IBOutlet weak var diceImage2: UIImageView!
    
    var randomDiceIndex1 : Int = 0
    
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
    }

    @IBAction func rollButtonClicked(_ sender: UIButton) {
        
        updateDiceImages()
    }
    
    func updateDiceImages() {
        
        randomDiceIndex1 = Int.random(in: 0 ... 5) // generate a random integer value between 0 and 5
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImage1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImage2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
}

