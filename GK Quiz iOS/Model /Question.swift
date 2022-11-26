//
//  Question.swift
//  GK Quiz iOS
//
//  Created by Anand Chaudhary on 11/26/22.
//

import Foundation

class Question {
    let questionImage : String
    let question : String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let correctAnswer : Int
    
    init(image: String, questionText: String, choiceA: String, choiceB : String, choiceC : String,
         choiceD : String, answer: Int){
        questionImage = image
        question = questionText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        optionD = choiceD
        correctAnswer = answer
    }
}
