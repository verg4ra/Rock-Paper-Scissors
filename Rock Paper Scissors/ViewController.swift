//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Edwin Vergara on 3/8/16.
//  Copyright © 2016 Edwin Vergara. All rights reserved.
//

import UIKit

enum RPSChoices: Int {
    case Rock
    case Paper
    case Scissors
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func chooseRock() {
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as! SecondViewController
        controller.userChoice = RPSChoices.Rock
        controller.computerChoice = randomChoice()
        presentViewController(controller, animated: true, completion: nil)
    }

    @IBAction func choosePaper() {
        performSegueWithIdentifier("paperSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as! SecondViewController
        
        let isScissorsSegue = segue.identifier == "scissorsSegue"
        let isPaperSegue = segue.identifier == "paperSegue"
        if isScissorsSegue {
            controller.userChoice = RPSChoices.Scissors
            controller.computerChoice = randomChoice()
        } else if isPaperSegue {
            controller.userChoice = RPSChoices.Paper
            controller.computerChoice = randomChoice()
        }
    }
    
    func randomChoice() -> RPSChoices {
        let randomInt = Int( arc4random() % 3 )
        let choice = RPSChoices.init(rawValue: randomInt)!
        return choice
    }
}

