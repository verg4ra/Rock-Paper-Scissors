//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Edwin Vergara on 3/8/16.
//  Copyright © 2016 Edwin Vergara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func chooseRock() {
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as! SecondViewController
        presentViewController(controller, animated: true, completion: nil)
    }

    @IBAction func choosePaper() {
        performSegueWithIdentifier("paperSegue", sender: self)
    }
}

