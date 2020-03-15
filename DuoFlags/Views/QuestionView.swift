//
//  QuestionView.swift
//  DuoFlags
//
//  Created by Isnard Silva on 07/03/20.
//  Copyright © 2020 Isnard Silva. All rights reserved.
//

import UIKit

public class QuestionView: UIView {
    @IBOutlet public var questionImageView: UIImageView!
    @IBOutlet public var answerAButton: AnswerButton!
    @IBOutlet public var answerBButton: AnswerButton!
    @IBOutlet public var answerCButton: AnswerButton!
    @IBOutlet public var answerDButton: AnswerButton!
    @IBOutlet public var checkAnswerButton: AnswerButton!
    
//    public override init(frame: CGRect) {
//        super.init(frame: frame)
//        print("init")
//    }
//    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        print("required init")
//    }
    
//    public override func layoutSubviews() {
//        print("layoutSubviews")
//        answerAButton.backgroundColor = .red
//    }
    
    // Desativando a possiblidade de o usuario escolhar
    // uma nova alternativa
    public func enableAnswerButtons(enable: Bool) {
        answerAButton.isUserInteractionEnabled = enable
        answerBButton.isUserInteractionEnabled = enable
        answerCButton.isUserInteractionEnabled = enable
        answerDButton.isUserInteractionEnabled = enable
    }
    
    // Tirando a selecao de qualquer botao que o usuario
    // tenha selecionado previamente
    public func clearSelectionAllAnswers() {
        answerAButton.isSelected = false
        answerBButton.isSelected = false
        answerCButton.isSelected = false
        answerDButton.isSelected = false
    }
}
