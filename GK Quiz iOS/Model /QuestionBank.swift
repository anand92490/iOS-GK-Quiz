//
//  QuestionBank.swift
//  GK Quiz iOS
//
//  Created by Anand Chaudhary on 11/26/22.
//

import Foundation
//
class QuestionBank{
    var list = [Question]()

     init(){
        //1
        list.append(Question(image: "blackbird", questionText: "What is the fastest airplane in the world?", choiceA: "Lockheed SR-71 Blackbird", choiceB: "Lockheed YF-12", choiceC: "XB-70 Valkyrie", choiceD: "Bell X-2 Starbuster", answer: 1))
        //2
        list.append(Question(image: "coffee", questionText: "Which U.S State is the only state to grow its own coffee beans?", choiceA: "Oregon", choiceB: "Washington", choiceC: "Hawaii", choiceD: "California", answer: 3))
        //3
        list.append(Question(image: "stop", questionText: "What geometric shape is generally used for stop signs?", choiceA: "Decagon", choiceB: "Pentagon", choiceC: "Hexagon", choiceD: "Octagon", answer: 4))
        //4
        list.append(Question(image: "google", questionText: "What was the original name of the search engine \"Google\"?", choiceA: "Bing", choiceB: "BackRub", choiceC: "Ask", choiceD: "Alexandria", answer: 2))
        //5
        list.append(Question(image: "juniper", questionText: "What alcoholic drink is mainly made from juniper berries?", choiceA: "Vodka", choiceB: "Rum", choiceC: "Gin", choiceD: "Tequila", answer: 3))
        //6
        list.append(Question(image: "london", questionText: "Which of these cities is NOT in England?", choiceA: "Edinburgh", choiceB: "Birmingham", choiceC: "Liverpool", choiceD: "Bristol", answer: 1))
        //7
        list.append(Question(image: "batterydura", questionText: "The term \"battery\" to describe an electrical storage device was coined by?", choiceA: "Nikola Tesla", choiceB: "Thomas Edison", choiceC: "Benjamin Franklin", choiceD: "Ada Lovelace", answer: 3))
        //8
        list.append(Question(image: "caterpillar", questionText: "How many eyes do caterpillars have?", choiceA: "Eight", choiceB: "four", choiceC: "two", choiceD: "Twelve", answer: 4))
        //9
        list.append(Question(image: "soviet", questionText: "Which country was NOT part of the Soviet Union?", choiceA: "Azerbaijan", choiceB: "Romania", choiceC: "Kyrgyzstan", choiceD: "Estonia", answer: 2))
        //10
        list.append(Question(image: "peregrine_falcon", questionText: "What is the world's fastest bird?", choiceA: "The Peregrine Falcon", choiceB: "Golden Eagle", choiceC: "Pigeon", choiceD: "Frigate Bird", answer: 1))

    }
}
