//
//  Question.swift
//  QestionAndAnswer
//
//  Created by Артем Писаренко on 12.09.2018.
//  Copyright © 2018 Артем Писаренко. All rights reserved.
//

import Foundation

struct Question{
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, range
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character{
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return"Вы окужаете себя людьми, которые вам нравятся и любите проводить время с друзьями"
        case .cat:
            return" вам нравится делать все самостоятельно"
        case .rabbit:
            return"вам нравится все мягкое и пушистое, вы очень энергичны"
        case .turtle:
            return"вы умны не по годам,медленный и аккуратный выигрывает "
        }
    }
}
