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
        } else if sender.tag == 3 {
            restart()
        }
        
        questionNumber += 1
        
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
    }
    
    func incorrect() {
        print("Wrong")
    }
    
    func nextQuestion() {
        scoreLabel.text = "Score: \(score)"
        questionLabel.text = quiz.allQuestions[questionNumber].questionText
    }
    
    func restart() {
        score = 0
        questionNumber = 0
        restartButton.isHidden = true
        trueButton.isHidden = false
        falseButton.isHidden = false
        nextQuestion()
    }
    
}

