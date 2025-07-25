//
//  ResultViewController.swift
//  PersonalityQuiz
//
//  Created by Student on 23/07/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    var responses : [Answer]
    
    @IBOutlet weak var resultDefinitonLabel: UILabel!
    @IBOutlet weak var resultAnswerLabel: UILabel!
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calcPersTest()
    }
    
    func calcPersTest() {
        let freqOfAns = responses.reduce(into: [:]) { counts, answer in
            counts[answer.type, default: 0] += 1
        }
        
        let mostCommonAnswers = freqOfAns.sorted { $0.value > $1.value }.first!.key
        
        resultAnswerLabel.text = "Your are a \(mostCommonAnswers.rawValue)!"
        resultDefinitonLabel.text = mostCommonAnswers.definition
    }
    
    

}
