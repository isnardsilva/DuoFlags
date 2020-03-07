//
//  QuestionGroupData.swift
//  DuoFlags
//
//  Created by Isnard Silva on 07/03/20.
//  Copyright © 2020 Isnard Silva. All rights reserved.
//

// MARK: - Data
// Dados das perguntas que serao exibidas
extension QuestionGroup {
    
    // Obter paises da America do Sul
    public static func southAmerica() -> QuestionGroup {
        let questions: [Question] = [
            Question(questionImage: "brazil-flag", answers: ["Argentina", "Colombia", "Brasil", "Chile"], correctAnswer: 2),
            Question(questionImage: "argentina-flag", answers: ["Peru", "Brasil", "Paraguai", "Argentina"], correctAnswer: 3),
            Question(questionImage: "colombia-flag", answers: ["Colombia", "Uruguai", "Bolivia", "Chile"], correctAnswer: 0)
        ]
        
        return QuestionGroup(questions: questions, title: "America do Sul")
    }
}
