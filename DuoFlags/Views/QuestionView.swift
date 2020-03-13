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
    @IBOutlet public var answerAButton: UIButton!
    @IBOutlet public var answerBButton: UIButton!
    @IBOutlet public var answerCButton: UIButton!
    @IBOutlet public var answerDButton: UIButton!
    @IBOutlet public var checkAnswerButton: UIButton!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        print("init")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print("required init")
    }
    
//    public override func layoutSubviews() {
//        print("layoutSubviews")
//        answerAButton.backgroundColor = .red
//    }
}
