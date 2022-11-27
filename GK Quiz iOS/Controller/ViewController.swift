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
        updateQuestion()
        updateUI()
        
        optionA.layer.cornerRadius = 10
        optionA.layer.borderWidth = 2
        optionA.layer.borderColor = UIColor.black.cgColor
        
        optionB.layer.cornerRadius = 10
        optionB.layer.borderWidth = 2
        optionB.layer.borderColor = UIColor.black.cgColor
        
        optionC.layer.cornerRadius = 10
        optionC.layer.borderWidth = 2
        optionC.layer.borderColor = UIColor.black.cgColor
        
        optionD.layer.cornerRadius = 10
        optionD.layer.borderWidth = 2
        optionD.layer.borderColor = UIColor.black.cgColor
        
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer{
          let correctAlert =   UIAlertController(title: "Your answer is", message: "Correct ✅", preferredStyle: .alert)
            present(correctAlert, animated: true, completion: nil)
            
            let nextQuestion =  UIAlertAction(title: "Next Question", style: .default, handler: {action in self.updateQuestion()})
            correctAlert.addAction(nextQuestion)
            //print("Correct")
            score += 1
        }else{
            let wrongAlert =   UIAlertController(title: "Your answer is", message: "Wrong ❌", preferredStyle: .alert)
              present(wrongAlert, animated: true, completion: nil)
              
              let nextQuestion =  UIAlertAction(title: "Next Question", style: .default, handler: {action in self.updateQuestion()})
                  wrongAlert.addAction(nextQuestion)
            //print("Incorrect")
        }
        questionNumber += 1
        updateQuestion()
        
    }
    
    func updateQuestion(){
      
        if questionNumber < allQuestions.list.count - 1{
            flagView.image = UIImage(named: (allQuestions.list[questionNumber].questionImage))
            questionLabel.text = allQuestions.list[questionNumber].question
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
            optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControl.State.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
            
            
        }else{
            let alert = UIAlertController(title: "Awesome", message: "End of quiz. Do you want ot start over?", preferredStyle: .alert)
            let restartAction =  UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        updateUI()
    }
    
    func updateUI(){
        scoreLabel.text = "Score: \(score) "
        questionCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count) * CGFloat(questionNumber + 1))
    }
    
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
        
    }

}

