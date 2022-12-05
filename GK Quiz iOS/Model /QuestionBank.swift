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
        list.append(Question(image: "hashtag", questionText: "What is another name for hashtag?", choiceA: "Octothorpe", choiceB: "Pentothorpe", choiceC: "Hasithorpe", choiceD: "Overthorpe", answer: 1))
        //2
        list.append(Question(image: "applePie", questionText: "Where does american apple pie originate from?", choiceA: "England", choiceB: "France", choiceC: "Canada", choiceD: "Ohio", answer: 1))
        //3
        list.append(Question(image: "phosphate", questionText: "Which country has the largest phosphate reserves?", choiceA: "China", choiceB: "Russia", choiceC: "Indonesia", choiceD: "Morocco", answer: 4))
        //4
        list.append(Question(image: "africa", questionText: "Which African country was formerly known as Abyssinia?", choiceA: "Ethiopia", choiceB: "Eritrea", choiceC: "Tanzania", choiceD: "Somalia", answer: 1))
        //5
        list.append(Question(image: "president", questionText: "How many presidents does bosnia have?", choiceA: "2", choiceB: "3", choiceC: "4", choiceD: "6", answer: 2))
        //6
        list.append(Question(image: "panda", questionText: "What is a group of pandas known as?", choiceA: "An Embarrassment", choiceB: "Nursery", choiceC: "Sloth", choiceD: "Pack", answer: 1))
        //7
        list.append(Question(image: "sushi", questionText: "Where did sushi originate from? ", choiceA: "Japan", choiceB: "Vietnam", choiceC: "China", choiceD: "Korea", answer: 3))
        //8
        list.append(Question(image: "ravens", questionText: "A group of ravens is known as what?", choiceA: "Unkindness", choiceB: "Ostentation", choiceC: "Gaggle", choiceD: "Pride", answer: 1))
        //9
        list.append(Question(image: "vomit", questionText: "Who invented the word vomit?", choiceA: "Edgar Allen Poe", choiceB: "William Shakespeare", choiceC: "Robert Frost", choiceD: "Charles Dickens", answer: 2))
        //10
        list.append(Question(image: "octopus", questionText: "How many hearts does an octopus have? ", choiceA: "3", choiceB: "2", choiceC: "1", choiceD: "0", answer: 1))

    }
}
