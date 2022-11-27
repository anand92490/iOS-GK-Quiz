//
//  ViewController.swift
//  GK Quiz iOS
//
//  Created by Anand Chaudhary on 11/25/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var flagView: UIImageView!
    // outlet for buttons
    
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    
    //
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        if sender.tag == 1{
            print("option a")
        }else if sender.tag == 2{
            print("option b")
        } else if sender.tag == 3{
            print("option c")
        }else{
            print("option d")
        }
    }
    
    func updateQuestion(){
        flagView.image = UIImage(named: (allQuestions.list[questionNumber].questionImage))
        questionLabel.text = allQuestions.list[questionNumber].question
        optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
        optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
        optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
        optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControl.State.normal)
        selectedAnswer = allQuestions.list[questionNumber].correctAnswer

        
    }
    
    func updateUI(){
        
    }
    
    func restartQuiz(){
        
    }

}

