//
//  LoginView.swift
//  Nutrition
//
//  Created by Lucas Munho on 14/06/23.
//

import UIKit

class LoginView: UIView {
    
    private lazy var loginLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bem-vindos ao Nutrition"
        label.font = UIFont(name: "Optima", size: 30)
        return label
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        configBackgroundColor()
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configBackgroundColor() {
        backgroundColor = .red
    }
}

extension LoginView: BuildView {
    
    func buildViewHierarchy() {
        addSubview(loginLabel)
    }
    
    func setupConstraints() {
    
        NSLayoutConstraint.activate([
        
            loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
        
        
        
        ])
        
    }
    
    
}
