//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    
    let diceImages = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "pokeball_PNG8"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.setTitle("I AM A BUTTON", for: .normal)
    }
    
    @IBAction func whenButtonPressed(_ sender: Any) {
        
        let leftDiceRandom = Int.random(in: 0..<6)
        let rightDiceRandom = Int.random(in: 0..<6)
        leftDice.image = diceImages[leftDiceRandom]
        rightDice.image = diceImages[rightDiceRandom]
        
    }
    
}

