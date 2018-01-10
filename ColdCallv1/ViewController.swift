//
//  ViewController.swift
//  ColdCallv1
//
//  Created by Arin Halicki on 1/10/18.
//  Copyright © 2018 Arin Halicki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameViewer: UILabel!
    
    
    let namesList = ["Harry", "Hermione", "Ron", "Hagrid", "Snape", "Dumbledore", "McGonagall", "Malfoy","Neville", "Sirius"]
    
    @IBAction func coldCallPressed(_ sender: UIButton) {
        print("Cold Call button pressed")
        let index = Int(arc4random_uniform(10))
        nameViewer.isHidden = false
        nameViewer.text = namesList[index]
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nameViewer.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

