//
//  QuestionViewController.swift
//  QestionAndAnswer
//
//  Created by Артем Писаренко on 09.09.2018.
//  Copyright © 2018 Артем Писаренко. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var questions: [Question] = [
        Question(text: "Какая еда вам нравится?",
                 type: .single,
                 answers:[
                    Answer(text: "Стейк", type: .dog),
                    Answer(text: "Рыба", type: .cat),
                    Answer(text: "Морковь", type: .rabbit),
                    Answer(text: "Кукуруза", type: .turtle)
            ]),
        Question(text: "Что вам нравится делать?",
                 type: .multiple,
                 answers:[
                    Answer(text: "Есть", type: .dog),
                    Answer(text: "Спать", type: .cat),
                    Answer(text: "Прыгать", type: .rabbit),
                    Answer(text: "Лежать", type: .turtle)
            ]),
        Question(text: "На сколько вам нравятся поездки на машине",
                 type: .range,
                 answers:[
                    Answer(text: "Обожаю", type: .dog),
                    Answer(text: "Ненавижу", type: .cat),
                    Answer(text: "Нервничаю", type: .rabbit),
                    Answer(text: "Все равно", type: .turtle)
            ])
    ]
    
    var questuonIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI() {
        
    }
    
    
}
