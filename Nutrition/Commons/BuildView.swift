//
//  BuildView.swift
//  Nutrition
//
//  Created by Lucas Munho on 14/06/23.
//

import Foundation

protocol BuildView {
    
    func buildViewHierarchy()
    func setupConstraints()
    func setupView()
}

extension BuildView {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
    }
}
