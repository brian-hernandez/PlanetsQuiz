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
        
        allQuestions.append(Question(text: "Mercury is the smallest planet.", correctAnswer: true))
        
        allQuestions.append(Question(text: "Jupiter, Saturn, Mars and Neptune all have rings.", correctAnswer: false))
        
        allQuestions.append(Question(text: "On average Saturn is the coldest planet", correctAnswer: false))
        
        allQuestions.append(Question(text: "Venus is the hottest planet.", correctAnswer: true))
    }
    
}
