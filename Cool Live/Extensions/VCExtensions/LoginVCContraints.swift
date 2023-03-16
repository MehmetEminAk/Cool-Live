//
//  LoginVCExtension.swift
//  Cool Live
//
//  Created by Macbook Air on 15.03.2023.
//

import Foundation
import UIKit


extension LoginVC {
    func setConstraints(){
        NSLayoutConstraint.activate([
            logo.widthAnchor.constraint(equalToConstant: deviceWidth * 0.33),
            logo.heightAnchor.constraint(equalToConstant: deviceHeight * 0.09),
            logo.leftAnchor.constraint(equalTo: view.leftAnchor , constant: deviceWidth * 0.33),
            logo.topAnchor.constraint(equalTo: view.topAnchor , constant: deviceHeight * 0.06),
            greetingsLabel.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: deviceHeight * 0.14),
            greetingsLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: deviceWidth * 0.08),
            greetingsLabel.widthAnchor.constraint(equalToConstant: deviceWidth * 0.72),
            usernameTf.widthAnchor.constraint(equalToConstant: deviceWidth * 0.84),
            usernameTf.topAnchor.constraint(equalTo: greetingsLabel.bottomAnchor, constant: deviceHeight * 0.05),
            usernameTf.leftAnchor.constraint(equalTo: greetingsLabel.leftAnchor),
            usernameTf.heightAnchor.constraint(equalToConstant: deviceHeight * 0.06),
            passwordTf.heightAnchor.constraint(equalTo: usernameTf.heightAnchor),
            passwordTf.topAnchor.constraint(equalTo: usernameTf.bottomAnchor, constant: deviceHeight * 0.02),
            passwordTf.widthAnchor.constraint(equalTo: usernameTf.widthAnchor),
            passwordTf.leftAnchor.constraint(equalTo: usernameTf.leftAnchor),
            signInBtn.widthAnchor.constraint(equalToConstant: deviceWidth * 0.5),
            signInBtn.topAnchor.constraint(equalTo: passwordTf.bottomAnchor, constant: deviceHeight * 0.04),
            signInBtn.heightAnchor.constraint(equalToConstant: deviceHeight * 0.06),
            signInBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: deviceWidth * 0.25),
            forgetPasswordLabel.topAnchor.constraint(equalTo: signInBtn.bottomAnchor , constant: 20),
            forgetPasswordLabel.widthAnchor.constraint(equalToConstant: deviceWidth * 0.6),
            forgetPasswordLabel.heightAnchor.constraint(equalToConstant: 8),
            forgetPasswordLabel.leftAnchor.constraint(equalTo: signInBtn.leftAnchor),
            orLoginText.widthAnchor.constraint(equalToConstant: deviceWidth * 0.84),
            orLoginText.heightAnchor.constraint(equalToConstant: 10),
            orLoginText.topAnchor.constraint(equalTo: forgetPasswordLabel.bottomAnchor , constant: deviceHeight * 0.04),
            orLoginText.leftAnchor.constraint(equalTo: usernameTf.leftAnchor),
            googleLoginBtn.leftAnchor.constraint(equalTo: passwordTf.leftAnchor),
            googleLoginBtn.widthAnchor.constraint(equalToConstant: deviceWidth * 0.42),
            googleLoginBtn.heightAnchor.constraint(equalTo: signInBtn.heightAnchor),
            googleLoginBtn.topAnchor.constraint(equalTo: orLoginText.bottomAnchor, constant: deviceHeight * 0.03),
            facebookLoginBtn.leftAnchor.constraint(equalTo: googleLoginBtn.rightAnchor , constant: 10),
            facebookLoginBtn.widthAnchor.constraint(equalToConstant: deviceWidth * 0.42),
            facebookLoginBtn.heightAnchor.constraint(equalTo: signInBtn.heightAnchor),
            facebookLoginBtn.topAnchor.constraint(equalTo: orLoginText.bottomAnchor, constant: deviceHeight * 0.03),
            signInLabel.leftAnchor.constraint(equalTo: googleLoginBtn.leftAnchor),
            signInLabel.widthAnchor.constraint(equalToConstant: deviceWidth * 0.8),
            signInLabel.heightAnchor.constraint(equalToConstant: 20),
            signInLabel.topAnchor.constraint(equalTo: facebookLoginBtn.bottomAnchor, constant: deviceHeight * 0.04)
            
            
        ])
    }
}
