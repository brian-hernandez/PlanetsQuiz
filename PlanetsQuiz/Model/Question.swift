//
//  Question.swift
//  PlanetsQuiz
//
//  Created by Brian Hernandez on 9/4/18.
//  Copyright © 2018 Brian. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text : String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}
