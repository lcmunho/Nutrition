//
//  ViewController.swift
//  Nutrition
//
//  Created by Lucas Munho on 14/06/23.
//

import UIKit

class ViewController: UIViewController {

    var loginView: LoginView?
    
    override func loadView() {
        loginView = LoginView()
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

