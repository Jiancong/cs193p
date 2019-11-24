//
//  ViewController.swift
//  Concentration
//
//  Created by jiancong_xie on 2019/11/23.
//  Copyright © 2019年 Stanford University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }

    @IBOutlet weak var flipCountLabel: UILabel!
   
    @IBAction func touchCard(_ sender: UIButton) {
       
        flipCount += 1
        
        if let cardNumber = cardButtons.index(of: sender) {
            print("cardNumber = \(cardNumber)")
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print ("chosen card was not in cardButtons.")
        }
        
    }
    
 
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🏀", "🚜", "🏀", "🚜"]
  
   
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        print("flipCard(withEmoji: \(emoji))")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

