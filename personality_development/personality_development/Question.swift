//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Student on 24/07/25.
//

import Foundation

struct Question{
    var text: String
    var type: ResponseType
    var answers: [Answer]
}


enum ResponseType{
    case single, multiple, ranged
}

struct Answer{
    var text: String
    var type: AnimalType
}

enum AnimalType: Character{
    case lion = "🦁", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String{
        switch self{
        case .lion:
            return "you are incredibly outgoing, you surround yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischiveous, yet mild-tempered, you enjoy doing things on your own terms"
        case .rabbit:
            return "You love everything thats soft, you are healthy and full of energy"
        case .turtle:
            return "you are wise beyonf your years, and you focus on the details, slow and steady wins the race."
        }
    }
}
