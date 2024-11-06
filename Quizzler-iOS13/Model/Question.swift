//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Darsh viroja  on 24/08/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question
{
    var text : String
    var answer : String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
