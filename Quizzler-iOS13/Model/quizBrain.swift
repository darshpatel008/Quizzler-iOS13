

import Foundation

struct QuizBrain{
   let quiz = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
        
    ]
    
    var question = 0
    var score = 0
    
    mutating func checkAnswer(answer userAnswer : String) -> Bool
    {
        if userAnswer == quiz[question].answer
        {
            score = score + 1
            return true
        }
        else
        {
            return false
        }
    }
    
    func getScore() -> Int
    {
        return score
    }
    
    func gotQuestionText() ->String
    {
      return quiz[question].text
    }
    
    func progressIndicator() ->Float
    {
       let ourProgress = Float(question + 1) / Float(quiz.count)
        
        return ourProgress
    }
   mutating func nextQuestion()
    {
        // 1 question is already print in viewload...
        
        if(question + 1 < quiz.count) // +1 is needed other wise warning: +1 is not increasing question value its for check
        {
            question = question + 1 // here its value is more than     array index
        }
       else // question = 3 which is array index
        {
            question = 0
            score = 0
        }
        
    }

  
      

    
}
