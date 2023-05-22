//
//  RulesVCViewController.swift
//  CardWorkout-ProgrammaticUi
//
//  Created by EgitoMv on 5/22/23.
//

import UIKit

class RulesVCViewController: UIViewController {
    
    let tittleLabel = UILabel()
    let rulesLabel = UILabel()
    let exerciceLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureRulesLabel()
        exerciseLabel()
    }
    
    func configureTitleLabel() {
        view.addSubview(tittleLabel)
        tittleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        tittleLabel.text = "Rules"
        tittleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        tittleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            tittleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            tittleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            tittleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card represents the number of exercise you do. \n\nJ = 11, Q = 12, K = 13, A = 14"
        rulesLabel.textAlignment = .center
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: tittleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func exerciseLabel() {
        view.addSubview(exerciceLabel)
        
        exerciceLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciceLabel.text = "♠️  = Push-ups\n\n♥️ = Sit-up\n\n♣️ = Burpees\n\n♦️ = Jumping Jacks"
        exerciceLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        exerciceLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            exerciceLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 60),
            exerciceLabel.widthAnchor.constraint(equalToConstant: 200),
            exerciceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
