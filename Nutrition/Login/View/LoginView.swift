//
//  LoginView.swift
//  Nutrition
//
//  Created by Lucas Munho on 14/06/23.
//

import UIKit

final class LoginView: UIView {
    
    private let loginLabel: UILabel
    private let logoImageView: UIImageView
    private let emailTextfield: UITextField
    private let passwordTextfield: UITextField
    private let loginButton: UIButton
    private let registerButton: UIButton
    
    override init(frame: CGRect) {
        loginLabel = UILabel()
        logoImageView = UIImageView()
        emailTextfield = UITextField()
        passwordTextfield = UITextField()
        loginButton = UIButton()
        registerButton = UIButton()
        
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LoginView: ViewCoding {
    func buildHierarchy() {
        addSubview(loginLabel)
        addSubview(logoImageView)
        addSubview(emailTextfield)
        addSubview(passwordTextfield)
        addSubview(loginButton)
        addSubview(registerButton)
    }
    
    func buildConstraints() {
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        emailTextfield.translatesAutoresizingMaskIntoConstraints = false
        passwordTextfield.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        
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
            loginButton.heightAnchor.constraint(equalTo: emailTextfield.heightAnchor),
            
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 50),
            registerButton.leadingAnchor.constraint(equalTo: emailTextfield.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: emailTextfield.trailingAnchor),
            
        ])
    }
    
    func render() {
        backgroundColor = .orange
        
        
        loginLabel.text = "Faça seu Login"
        loginLabel.font = UIFont(name: "Chalkduster", size: 38)
        loginLabel.textColor = .white
        
        logoImageView.image = UIImage(named: "login")
        logoImageView.tintColor = .white
        logoImageView.contentMode = .scaleAspectFit
        
        emailTextfield.autocorrectionType = .no
        emailTextfield.backgroundColor = .white
        emailTextfield.borderStyle = .roundedRect
        emailTextfield.keyboardType = .emailAddress
        emailTextfield.placeholder = "Digite seu email"
        emailTextfield.textColor = .darkGray
        emailTextfield.layer.cornerRadius = 12.0
        
        passwordTextfield.autocorrectionType = .no
        passwordTextfield.backgroundColor = .white
        passwordTextfield.borderStyle = .roundedRect
        passwordTextfield.keyboardType = .default
        passwordTextfield.placeholder = "Digite sua senha"
        passwordTextfield.textColor = .darkGray
        passwordTextfield.isSecureTextEntry = true
        passwordTextfield.layer.cornerRadius = 12.0
        
        loginButton.setTitle("Entrar", for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        loginButton.setTitleColor(.white, for: .focused)
        loginButton.clipsToBounds = true
        loginButton.layer.cornerRadius = 12.0
        loginButton.backgroundColor = UIColor(red: 255/255, green: 104/255, blue: 0/255, alpha: 1.0)
        
        
        registerButton.setTitle("Não tem conta? Cadastre-se!", for: .normal)
        registerButton.titleLabel?.font = UIFont(name: "Chalkduster", size: 18)
        registerButton.setTitleColor(.white, for: .focused)
        registerButton.clipsToBounds = true
        registerButton.backgroundColor = .clear
    }
}
