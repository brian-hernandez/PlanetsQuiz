//
//  ViewController.swift
//  PlanetsQuiz
//
//  Created by Brian Hernandez on 9/4/18.
//  Copyright © 2018 Brian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var rocket: UIImageView!
    
    let quiz = QuestionBank()
    var questionNumber = 0
    var totalQuestions : Int = 0
    var score : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        totalQuestions = quiz.allQuestions.count
        scoreLabel.text = "Score: \(score)"
        questionLabel.text = quiz.allQuestions[questionNumber].questionText
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if sender.tag == 1{
            print(sender.tag)
            if quiz.allQuestions[questionNumber].answer == true {
                correct()
            } else {
                incorrect()
            }
        } else if sender.tag == 2{
            print(sender.tag)
            if quiz.allQuestions[questionNumber].answer == false {
                correct()
            } else {
                incorrect()
            }
        }
        
        questionNumber += 1
        
        if sender.tag == 3 {
            restart()
        }
        
        if totalQuestions > questionNumber {
            nextQuestion()
        } else {
            print("Done")
            restartButton.isHidden = false
            trueButton.isHidden = true
            falseButton.isHidden = true
            questionLabel.text = ""
        }
        
        
    }
    
    func correct() {
        score += 20
        ProgressHUD.showSuccess("Correct!")
        scoreLabel.text = "Score: \(score)"
    }
    
    func incorrect() {
        ProgressHUD.showError("Incorrect!")
    }
    
    func nextQuestion() {
        questionLabel.text = quiz.allQuestions[questionNumber].questionText
    }
    
    func restart() {
        animateRocket()
        score = 0
        questionNumber = 0
        scoreLabel.text = "Score: \(score)"
        restartButton.isHidden = true
        trueButton.isHidden = false
        falseButton.isHidden = false
        nextQuestion()
    }
    
    func animateRocket() {
        UIView.animate(withDuration: 2, animations: {() -> Void in
            self.rocket.isHidden = false
            self.rocket.frame.origin.y -= 2000
        }, completion: { (finished: Bool) in
            self.rocket.isHidden = true
            self.rocket.frame = CGRect(x: 48, y: 631, width: 278, height: 494)
        })
    }
    
}

