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
    var count = 3
    
    var timer = Timer()
    
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
        self.timerLabel.text = "3"
        
    }
    
    
    
    @IBAction func timerButtonPressed(_ sender: Any) {
        
        
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            
            
            self.count = self.count - 1
            self.timerLabel.text = "\(self.count)"
            if (self.count == 0) {
                timer.invalidate()
                self.count = 3
                self.timerLabel.text = "\(self.count)"
                self.userChoice = 3
                self.performSegue(withIdentifier: "segue", sender: nil)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController = segue.destination as! SecondViewController
        secondViewController.userChoice = userChoice
    }
    
    @objc func rockImageTapped(tapGestureRecognizer: UITapGestureRecognizer) 
    {
        self.timer.invalidate()
        userChoice = 0
        self.count = 3
        self.timerLabel.text = "\(self.count)"
        performSegue(withIdentifier: "segue", sender: nil)
        
        // Your action
    }
    @objc func scissorsImageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        self.timer.invalidate()
        userChoice = 1
        self.count = 3
        self.timerLabel.text = "\(self.count)"
         performSegue(withIdentifier: "segue", sender: nil)
        
        // Your action
    }
    @objc func paperImageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        self.timer.invalidate()
       userChoice = 2
        self.count = 3
        self.timerLabel.text = "\(self.count)"
         performSegue(withIdentifier: "segue", sender: nil) 
        
        // Your action
    }
}

