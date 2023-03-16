//
//  SignUpExtensions.swift
//  Cool Live
//
//  Created by Macbook Air on 16.03.2023.
//

import Foundation
import UIKit

extension SignInVC {
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            
            
            
            logo.widthAnchor.constraint(equalToConstant: deviceWidth * 0.33),
            logo.heightAnchor.constraint(equalToConstant: deviceHeight * 0.09),
            logo.leftAnchor.constraint(equalTo: contentView.leftAnchor , constant: deviceWidth * 0.33),
            logo.topAnchor.constraint(equalTo: view.topAnchor , constant: deviceHeight * 0.06),
            headerText.topAnchor.constraint(equalTo: vcBackground.topAnchor, constant: deviceHeight * 0.07),
            headerText.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: deviceWidth * 0.08),
            headerText.widthAnchor.constraint(equalToConstant: deviceWidth * 0.72),
            usernameTf.widthAnchor.constraint(equalToConstant: deviceWidth * 0.84),
            usernameTf.topAnchor.constraint(equalTo: headerText.bottomAnchor, constant: deviceHeight * 0.02),
            usernameTf.leftAnchor.constraint(equalTo: headerText.leftAnchor),
            usernameTf.heightAnchor.constraint(equalToConstant: deviceHeight * 0.06),
            emailTf.heightAnchor.constraint(equalTo: usernameTf.heightAnchor),
            emailTf.topAnchor.constraint(equalTo: usernameTf.bottomAnchor, constant: deviceHeight * 0.02),
            emailTf.widthAnchor.constraint(equalTo: usernameTf.widthAnchor),
            emailTf.leftAnchor.constraint(equalTo: usernameTf.leftAnchor),
            passwordTf.leftAnchor.constraint(equalTo: emailTf.leftAnchor),
            passwordTf.topAnchor.constraint(equalTo: emailTf.bottomAnchor , constant: deviceHeight * 0.02),
            passwordTf.widthAnchor.constraint(equalTo: emailTf.widthAnchor),
            passwordTf.heightAnchor.constraint(equalTo: emailTf.heightAnchor),
            passwordTfAgain.leftAnchor.constraint(equalTo: emailTf.leftAnchor),
            passwordTfAgain.topAnchor.constraint(equalTo: passwordTf.bottomAnchor , constant: deviceHeight * 0.02),
            passwordTfAgain.widthAnchor.constraint(equalTo: emailTf.widthAnchor),
            passwordTfAgain.heightAnchor.constraint(equalTo: emailTf.heightAnchor),
            birthDateLabel.leftAnchor.constraint(equalTo: emailTf.leftAnchor),
            birthDateLabel.topAnchor.constraint(equalTo: passwordTfAgain.bottomAnchor , constant: 10),
            birthDateLabel.widthAnchor.constraint(equalTo: emailTf.widthAnchor),
            birthDateLabel.heightAnchor.constraint(equalToConstant: 20),
            birthDayTf.leftAnchor.constraint(equalTo: emailTf.leftAnchor),
            birthDayTf.topAnchor.constraint(equalTo: birthDateLabel.bottomAnchor , constant: 5),
            birthDayTf.widthAnchor.constraint(equalToConstant: deviceWidth * 0.25),
            birthDayTf.heightAnchor.constraint(equalTo: emailTf.heightAnchor),
             
            birthMonthTf.leftAnchor.constraint(equalTo: birthDayTf.rightAnchor , constant: deviceWidth * 0.03),
            birthMonthTf.topAnchor.constraint(equalTo: birthDayTf.topAnchor),
            birthMonthTf.widthAnchor.constraint(equalTo: birthDayTf.widthAnchor),
            birthMonthTf.heightAnchor.constraint(equalTo: birthDayTf.heightAnchor),
            
            birthYearTf.leftAnchor.constraint(equalTo: birthMonthTf.rightAnchor , constant: deviceWidth * 0.03),
            birthYearTf.topAnchor.constraint(equalTo: birthDayTf.topAnchor),
            birthYearTf.widthAnchor.constraint(equalTo: birthDayTf.widthAnchor),
            birthYearTf.heightAnchor.constraint(equalTo: birthDayTf.heightAnchor),
            
            phoneNumberLabel.leftAnchor.constraint(equalTo: birthDateLabel.leftAnchor),
            phoneNumberLabel.topAnchor.constraint(equalTo: birthDayTf.bottomAnchor , constant: 10),
            phoneNumberLabel.widthAnchor.constraint(equalTo: birthDateLabel.widthAnchor),
            phoneNumberLabel.heightAnchor.constraint(equalTo: birthDateLabel.heightAnchor),
            
            numberCountryCodeTf.leftAnchor.constraint(equalTo: phoneNumberLabel.leftAnchor),
            numberCountryCodeTf.topAnchor.constraint(equalTo: phoneNumberLabel.bottomAnchor , constant: 10),
            numberCountryCodeTf.widthAnchor.constraint(equalToConstant: deviceWidth * 0.15),
            numberCountryCodeTf.heightAnchor.constraint(equalTo: birthDayTf.heightAnchor),
            
            phoneNumberTf.leftAnchor.constraint(equalTo: numberCountryCodeTf.rightAnchor , constant: deviceWidth * 0.04),
            phoneNumberTf.topAnchor.constraint(equalTo: numberCountryCodeTf.topAnchor),
            phoneNumberTf.widthAnchor.constraint(equalToConstant: deviceWidth * 0.65),
            phoneNumberTf.heightAnchor.constraint(equalTo: numberCountryCodeTf.heightAnchor),
        
            genderLabel.leftAnchor.constraint(equalTo: birthDateLabel.leftAnchor),
            genderLabel.topAnchor.constraint(equalTo: phoneNumberTf.bottomAnchor , constant: 10),
            genderLabel.widthAnchor.constraint(equalTo: birthDateLabel.widthAnchor),
            genderLabel.heightAnchor.constraint(equalTo: birthDateLabel.heightAnchor),
            
            selectGender.leftAnchor.constraint(equalTo: birthDateLabel.leftAnchor),
            selectGender.topAnchor.constraint(equalTo: genderLabel.bottomAnchor , constant: 10),
            selectGender.widthAnchor.constraint(equalTo: emailTf.widthAnchor),
            selectGender.heightAnchor.constraint(equalToConstant: deviceHeight * 0.03),
            
            continueBtn.widthAnchor.constraint(equalToConstant: deviceWidth * 0.5),
            continueBtn.topAnchor.constraint(equalTo: selectGender.bottomAnchor, constant: deviceHeight * 0.02),
            continueBtn.heightAnchor.constraint(equalToConstant: deviceHeight * 0.06),
            continueBtn.leftAnchor.constraint(equalTo: contentView.leftAnchor , constant: deviceWidth * 0.25),
            
            loginWithLabel.widthAnchor.constraint(equalToConstant: deviceWidth * 0.84),
            loginWithLabel.heightAnchor.constraint(equalToConstant: 10),
            loginWithLabel.topAnchor.constraint(equalTo: continueBtn.bottomAnchor , constant: 10),
            loginWithLabel.leftAnchor.constraint(equalTo: usernameTf.leftAnchor),
            googleBtn.leftAnchor.constraint(equalTo: passwordTf.leftAnchor),
            googleBtn.widthAnchor.constraint(equalToConstant: deviceWidth * 0.42),
            googleBtn.heightAnchor.constraint(equalTo: continueBtn.heightAnchor),
            googleBtn.topAnchor.constraint(equalTo: loginWithLabel.bottomAnchor, constant: deviceHeight * 0.03),
            facebookBtn.leftAnchor.constraint(equalTo: googleBtn.rightAnchor , constant: 10),
            facebookBtn.widthAnchor.constraint(equalToConstant: deviceWidth * 0.42),
            facebookBtn.heightAnchor.constraint(equalTo: continueBtn.heightAnchor),
            facebookBtn.topAnchor.constraint(equalTo: loginWithLabel.bottomAnchor, constant: deviceHeight * 0.03),
            toLoginPageLabel.leftAnchor.constraint(equalTo: googleBtn.leftAnchor),
            toLoginPageLabel.widthAnchor.constraint(equalToConstant: deviceWidth * 0.8),
            toLoginPageLabel.heightAnchor.constraint(equalToConstant: 20),
            toLoginPageLabel.topAnchor.constraint(equalTo: facebookBtn.bottomAnchor, constant: deviceHeight * 0.04)
            
        ])
        
    }
    
}
