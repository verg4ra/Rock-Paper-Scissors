//
//  SecondViewController.swift
//  Rock Paper Scissors
//
//  Created by Edwin Vergara on 3/8/16.
//  Copyright © 2016 Edwin Vergara. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var userChoice: RPSChoices?
    var computerChoice: RPSChoices?

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        self.compareChoices(userChoice, secondChoice: computerChoice)
    }
    
    @IBAction func dismiss() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func compareChoices(firstChoice: RPSChoices?, secondChoice: RPSChoices?) {
        let total = firstChoice!.rawValue + secondChoice!.rawValue
        let winMessage = " You Win!"
        let loseMessage = " You Lose!"
        
        func appendMessage(winChoice: RPSChoices) {
            if userChoice == winChoice {
                label.text?.appendContentsOf(winMessage)
            } else {
                label.text?.appendContentsOf(loseMessage)
            }
        }
        
        if firstChoice == secondChoice {
            label.text = "It's a tie"
            imageView.image = UIImage(named: "itsATie")
        } else {
            switch total {
            case 1:
                label.text = "Paper Covers Rock."
                imageView.image = UIImage(named: "PaperCoversRock")
                appendMessage(.Paper)
            case 2:
                label.text = "Rock Crushes Scissors."
                imageView.image = UIImage(named: "RockCrushesScissors")
                appendMessage(.Rock)
            case 3:
                label.text = "Scissors Cut Paper."
                imageView.image = UIImage(named: "ScissorsCutPaper")
                appendMessage(.Scissors)
            default:
                print("user \(userChoice!) computer\(secondChoice!)")
            }
        }
        
    }
    

}
