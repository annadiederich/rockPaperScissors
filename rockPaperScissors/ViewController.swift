//
//  ViewController.swift
//  rockPaperScissors
//
//  Created by Anna Diederich on 7/6/20.
//  Copyright © 2020 Anna Diederich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rockImage: UIImageView!
    @IBOutlet weak var scissorsImage: UIImageView!
    @IBOutlet weak var paperImage: UIImageView!
    @IBOutlet weak var timerLabel: UILabel!
    
    var userChoice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let rockGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(rockImageTapped(tapGestureRecognizer:)))
        rockImage.isUserInteractionEnabled = true
        rockImage.addGestureRecognizer(rockGestureRecognizer)
        
        let paperGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(paperImageTapped(tapGestureRecognizer:)))
        paperImage.isUserInteractionEnabled = true
        paperImage.addGestureRecognizer(paperGestureRecognizer)
        
        let scissorsGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(scissorsImageTapped(tapGestureRecognizer:)))
        scissorsImage.isUserInteractionEnabled = true
        scissorsImage.addGestureRecognizer(scissorsGestureRecognizer)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func timerButtonPressed(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController = segue.destination as! SecondViewController
        secondViewController.userChoice = userChoice
    }
    
    @objc func rockImageTapped(tapGestureRecognizer: UITapGestureRecognizer) 
    {
        userChoice = 0
        performSegue(withIdentifier: "segue", sender: nil)
        
        // Your action
    }
    @objc func scissorsImageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        userChoice = 1
         performSegue(withIdentifier: "segue", sender: nil)
        
        // Your action
    }
    @objc func paperImageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
       userChoice = 2
         performSegue(withIdentifier: "segue", sender: nil) 
        
        // Your action
    }
}

