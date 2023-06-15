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
        label.text = "Faça seu Login"
        label.font = UIFont(name: "Chalkduster", size: 38)
        label.textColor = .white
        return label
    }()
    
    private lazy var logoImageView: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "login")
        image.tintColor = .white
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private lazy var emailTextfield: UITextField = {
       let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.placeholder = "Digite seu email"
        textField.textColor = .darkGray
        textField.layer.cornerRadius = 12.0
        return textField
    }()
    
    private lazy var passwordTextfield: UITextField = {
       let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.placeholder = "Digite sua senha"
        textField.textColor = .darkGray
        textField.isSecureTextEntry = true
        textField.layer.cornerRadius = 12.0
        return textField
    }()
    
    private var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.setTitleColor(.white, for: .focused)
        button.clipsToBounds = true
        button.layer.cornerRadius = 12.0
        button.backgroundColor = UIColor(red: 255/255, green: 104/255, blue: 0/255, alpha: 1.0)
        return button
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
        backgroundColor = .orange
    }
}

extension LoginView: BuildView {
    
    func buildViewHierarchy() {
        addSubview(loginLabel)
        addSubview(logoImageView)
        addSubview(emailTextfield)
        addSubview(passwordTextfield)
        addSubview(loginButton)
    }
    
    func setupConstraints() {
    
        NSLayoutConstraint.activate([
        
            loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            logoImageView.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 18),
            logoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            logoImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            
            emailTextfield.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 22),
            emailTextfield.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTextfield.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            emailTextfield.heightAnchor.constraint(equalToConstant: 40),
            
            passwordTextfield.topAnchor.constraint(equalTo: emailTextfield.bottomAnchor, constant: 12),
            passwordTextfield.leadingAnchor.constraint(equalTo: emailTextfield.leadingAnchor),
            passwordTextfield.trailingAnchor.constraint(equalTo: emailTextfield.trailingAnchor),
            passwordTextfield.heightAnchor.constraint(equalTo: emailTextfield.heightAnchor),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextfield.bottomAnchor, constant: 22),
            loginButton.leadingAnchor.constraint(equalTo: emailTextfield.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: emailTextfield.trailingAnchor),
            loginButton.heightAnchor.constraint(equalTo: emailTextfield.heightAnchor)
            
            
        ])
        
    }
    
    
}
