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

    @IBOutlet weak var computerPickedImage: UIImageView!
    @IBOutlet weak var userPickedImage: UIImageView!
    
    @IBOutlet weak var whoWon: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateComputerChoice()
        compare()
        populateImages()
        

        // Do any additional setup after loading the view.
    }
    func generateComputerChoice () {
        let number = Int.random(in: 0 ..< 3)
        computerChoice = number
    }
    
    func populateImages () {
        if (userChoice == 3) {
            userPickedImage.image = nil
        } else if userChoice == 0 {
            userPickedImage.image = UIImage(named: "rock.jpg")
        } else if userChoice == 1 {
            userPickedImage.image = UIImage(named: "scissors.jpg")
        } else if userChoice == 2 {
            userPickedImage.image = UIImage(named: "paper.jpg")
        }
        
        if (userChoice == 3) {
            computerPickedImage.image = nil
        } else if computerChoice == 0 {
            computerPickedImage.image = UIImage(named: "rock.jpg")
        } else if computerChoice == 1 {
            computerPickedImage.image = UIImage(named: "scissors.jpg")
        } else if computerChoice == 2 {
            computerPickedImage.image = UIImage(named: "paper.jpg")
        }
    }
    
    
    func compare () {
        if computerChoice == userChoice {
            print ("It's a tie")
            
            whoWon.text = "It's a tie"
        } else if (userChoice == 0 && computerChoice == 1) {
            print ("You won")
             whoWon.text = "You won"
            
        } else if (userChoice == 1 && computerChoice == 2) {
            print ("You won")
             whoWon.text = "You won"
            
        } else if (userChoice == 2 && computerChoice == 0) {
            print ("You won")
             whoWon.text = "You won"
        } else if (userChoice == 3) {
            whoWon.text = "You ran out of time"
        } else {
            print ("You lost")
             whoWon.text = "You lost"
            
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
