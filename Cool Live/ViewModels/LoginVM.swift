//
//  LoginVM.swift
//  Cool Live
//
//  Created by Macbook Air on 15.03.2023.
//

import Foundation

protocol LoginDelegate : AnyObject {
    func didTapButton()
}


class LoginViewModel : LoginDelegate {
    weak var delegate : LoginDelegate?
    
    func didTapButton() {
        print("Button clicked")
    }
}


