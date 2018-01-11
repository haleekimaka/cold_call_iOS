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
    
    @IBOutlet weak var randomNumber: UILabel!
    
    let namesList = ["Harry", "Hermione", "Ron", "Hagrid", "Snape", "Dumbledore", "McGonagall", "Malfoy","Neville", "Sirius"]
    
    @IBAction func coldCallPressed(_ sender: UIButton) {
        print("Cold Call button pressed")
        //Set the random index value
        let index = Int(arc4random_uniform(10))
        nameViewer.isHidden = false
        nameViewer.text = namesList[index]
        
        //Set the random number that will be displayed
        let number = Int(arc4random_uniform(5)+1)
        
        //Depending on the number change the text color
        if number == 1 || number == 2 {
            randomNumber.textColor = .red
        }
        else if number == 3 || number == 4 {
            randomNumber.textColor = .orange
        }
        else if number == 5 {
            randomNumber.textColor = .green
        }
        randomNumber.isHidden = false
        randomNumber.text = String(number)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set the label text to hidden on load
        nameViewer.isHidden = true
        randomNumber.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

