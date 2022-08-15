//
//  ViewController.swift
//  Quiz
//
//  Created by Guligena Aierken on 8/15/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel?
    @IBOutlet var answerLabel: UILabel?

    
    let questions = [
        "What is the capital of USA?",
        "Which city is called big apple?",
        "Where is Bogota?"
    ]
    
    let answers = [
        "Washington D.C.",
        "NYC",
        "In Columbia"
    ]
    
    var currentQuestionIndex = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex >= questions.count {
            currentQuestionIndex = 0
        }
        
        questionLabel?.text = questions[currentQuestionIndex]
        answerLabel?.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel?.text = answers[currentQuestionIndex]
    }
    
    override func viewDidLoad() {
        questionLabel?.text = questions[0]
        answerLabel?.text = "???"
        super.viewDidLoad()
    }

}

