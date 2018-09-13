//
//  QuestionViewController.swift
//  QestionAndAnswer
//
//  Created by Артем Писаренко on 09.09.2018.
//  Copyright © 2018 Артем Писаренко. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var multiLabel1: UILabel!
    @IBOutlet weak var multiLabel2: UILabel!
    @IBOutlet weak var multiLabel3: UILabel!
    @IBOutlet weak var multiLabel4: UILabel!

    @IBOutlet weak var rangetStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
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
    
    var questionIndex = 0
    
    
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
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangetStackView.isHidden = true
        
        navigationItem.title = "Вопрос №\(questionIndex + 1)"
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple:
            updateMultipleStack(using: currentAnswers)
        case .range:
            updateRangeStack(using: currentAnswers)
        }
    }
    
    func updateSingleStack(using answers: [Answer]) {
        singleStackView.isHidden = false
        singleButton1.setTitle(answers[0].text, for: .normal)
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        singleButton4.setTitle(answers[3].text, for: .normal)
    }
    
    func updateMultipleStack(using answers: [Answer]) {
        multipleStackView.isHidden = false
        multiLabel1.text = answers[0].text
         multiLabel2.text = answers[1].text
         multiLabel3.text = answers[2].text
         multiLabel4.text = answers[3].text
    }

    func updateRangeStack(using answers: [Answer]) {
        rangetStackView.isHidden = false
        rangedLabel1.text = answers.first?.text
        rangedLabel2.text = answers.last?.text
    }


}
