//
//  SecondViewController.swift
//  rockPaperScissors
//
//  Created by Anna Diederich on 7/6/20.
//  Copyright © 2020 Anna Diederich. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var userChoice = 0
    var computerChoice = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func generateComputerChoice () {
        let number = Int.random(in: 0 ..< 3)
        computerChoice = number
    }
    
    func compare () {
        if computerChoice == userChoice {
            print ("It's a tie")
        } else if (userChoice == 0 && computerChoice == 1) {
            print ("You won")
            
        } else if (userChoice == 1 && computerChoice == 2) {
            print ("You won")
            
        } else if (userChoice == 2 && computerChoice == 0) {
            print ("You won")
        } else {
            print ("You lost") 
            
        }
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
