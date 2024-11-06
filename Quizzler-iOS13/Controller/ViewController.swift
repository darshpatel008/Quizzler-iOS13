//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //
  
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    
    
    
    override func viewDidLoad() 
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       updateUI()
    }
        
        @IBAction func answerButtonPressed(_ sender: UIButton) 
        {
        
         
            
          let userAnswer = sender.currentTitle
            
          let userGotRight =  quizBrain.checkAnswer(answer : userAnswer!)
          //stored output     // output of method
           
            
            if userGotRight
             {
                sender.backgroundColor = UIColor.green
             }
            else
            {
                sender.backgroundColor = UIColor.red
            }
            
           
           
            quizBrain.nextQuestion()
            
            
            
            
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
     // to invalidate only we need to store this timer into variable but here we turn our repeatation off so need to worry
           
        }
     
    @objc func updateUI()
    {
        let getscore = quizBrain.getScore()
        scoreLabel.text = "Score: \(getscore)"
        
        
        
        let abc = quizBrain.gotQuestionText()
        
        questionLabel.text = abc
         
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        let xyz = quizBrain.progressIndicator()
        
        progressBar.progress = xyz
        
        
        //another method i found
      /*  DispatchQueue.main.asyncAfter(deadline: .now() + 0.2)
        {
            questionLabel.text = quiz[question].text
            trueButton.backgroundColor = UIColor.clear
            falseButton.backgroundColor = UIColor.clear
        }*/
    }
    
}
