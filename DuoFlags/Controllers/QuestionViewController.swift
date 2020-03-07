//
//  ViewController.swift
//  DuoFlags
//
//  Created by Isnard Silva on 05/03/20.
//  Copyright © 2020 Isnard Silva. All rights reserved.
//

import UIKit

public class QuestionViewController: UIViewController {
    // MARK: - Instance Properties
    // Grupo de questoes (Territorio) que serao exibida
    public var questionGroup = QuestionGroup.southAmerica()
    // Indice da questao que esta sendo exibida no momento
    public var questionIndex = 0
    
    // Qtd de acertos/erros
    public var correctCount = 0
    public var incorrectCount = 0
    
    // Resposta marcada pelo usuario
    public var markedAnswer: String!
    
    // Camada de View fornecendo os elementos presenta na tela
    public var questionView: QuestionView! {
        // Verificando se a View ja foi carregada
        guard isViewLoaded else { return nil }
        // Retornando a View com os elementos
        return (view as! QuestionView)
    }
    
    
    
    // MARK: - View Lifecycle
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        // Exibindo os dados da questao atual
        showQuestion()
    }

    private func showQuestion() {
        // Obtendo a questao que sera exibida
        let question = questionGroup.questions[questionIndex]
        
        // Inserindo os dados da Model na View
        questionView.questionImageView.image = UIImage(named: question.questionImage)
        questionView.answerAButton.setTitle(question.answers[0], for: .normal)
        questionView.answerBButton.setTitle(question.answers[1], for: .normal)
        questionView.answerCButton.setTitle(question.answers[2], for: .normal)
        questionView.answerDButton.setTitle(question.answers[3], for: .normal)
    }
    
    
    
    // MARK: - Actions
    // Marcando a resposta a ser verificada
    @IBAction func markAnswer(_ sender: UIButton) {
        markedAnswer = sender.titleLabel!.text
        print("Resposta marcada: \(markedAnswer!)")
    }
    
    // Verificando se a resposta correta foi a que foi marcada
    @IBAction func checkAnswer(_ sender: UIButton) {
        // Obtendo os dados da questao sendo exibida atualmente
        let currectQuestion = questionGroup.questions[questionIndex]
        // Obtendo a resposta correta para essa questao
        let correctAnswer = currectQuestion.answers[currectQuestion.correctAnswer]
        
        // Verificando se a resposta marcada e a resposta correta
        if markedAnswer == correctAnswer {
            // Incrementando o nro de respostas corretas
            correctCount += 1
            print("Acertou")
        } else {
            // Incrementando o nro de respostas incorretas
            incorrectCount += 1
            print("Errou")
        }
        
        // Chamando a proxima pergunta
        showNextQuestion()
    }
    
    // Exibindo a proxima pergunta
    private func showNextQuestion() {
        // Incrementando o contador de perguntas
        questionIndex += 1
        
        // Verificando se ainda existem perguntas para serem exibidas
        guard questionIndex < questionGroup.questions.count else {
            // TODO: - Implementar logica quando acaba as questoes
            return
        }
        
        // Exibindo a proxima questao
        showQuestion()
    }
}

