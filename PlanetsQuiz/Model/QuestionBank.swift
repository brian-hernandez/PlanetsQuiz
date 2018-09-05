//
//  QuestionBank.swift
//  PlanetsQuiz
//
//  Created by Brian Hernandez on 9/4/18.
//  Copyright © 2018 Brian. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var allQuestions = [Question]()
    
    init() {
        allQuestions.append(Question(text: "There are 9 planets in our Solar System", correctAnswer: false))
    }
    
}
