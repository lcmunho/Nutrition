//
//  BuildView.swift
//  Nutrition
//
//  Created by Lucas Munho on 14/06/23.
//

//import Foundation
//
//protocol BuildView {
//
//    func buildViewHierarchy()
//    func setupConstraints()
//    func setupView()
//}
//
//extension BuildView {
//    func setupView() {
//        buildViewHierarchy()
//        setupConstraints()
//    }
//}

protocol ViewCoding {
    func configure()
    func buildHierarchy()
    func buildConstraints()
    func render()
    func setupView()
}

extension ViewCoding {
    func setupView() {
        configure()
        buildHierarchy()
        buildConstraints()
        render()
    }
    
    func configure() { }
}
