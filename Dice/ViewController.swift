//
//  ViewController.swift
//
//  Created by Bridget Baksa on 11/27/2019.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        diceOutput.text = ""
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let allDice = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        let dice1 = Int.random(in: 0...5)
        let dice2 = Int.random(in: 0...5)
        let diceText = dice1 + dice2 + 2
        
        diceImageView1.image = allDice[dice1]
        diceImageView2.image = allDice[dice2]
        diceOutput.text = "You rolled a \(diceText)"
        
    }
    
}

