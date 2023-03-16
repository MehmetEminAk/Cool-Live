//
//  SignInVCExtension.swift
//  Cool Live
//
//  Created by Macbook Air on 16.03.2023.
//

import Foundation
import UIKit





extension SignInVC : UIScrollViewDelegate {
    
    
    func configureObjectsForViewController(){
        logo = comonViews.logo
        vcBackground = comonViews.vcBackground
        loginWithLabel = comonViews.orLoginText(text: "------------- veya şunu kullan -------------")
        toLoginPageLabel = comonViews.labelWithLink(normalText: "Zaten bir hesabın var mı? ", linkedText: "Giriş Yap")
        continueBtn = comonViews.createMainActionButton(title: "Devam Et")
        googleBtn = comonViews.googleLoginBtn
        facebookBtn = comonViews.facebookLoginBtn
        headerText = comonViews.createHeadersLabel(boldHeader: "Kayıt Ol", normalText: "Bir tuşla dünyanın her yerine ulaşın")
        usernameTf = comonViews.centralTextField(placeholder: "Ad Soyad Girin")
        emailTf = comonViews.centralTextField(placeholder: "Email Gir")
        passwordTf = comonViews.passwordTf
        passwordTfAgain = comonViews.centralTextField(placeholder: "Şifreni Yeniden Gir")
        birthDateLabel = comonViews.createMiddleLabels(text: "Doğum Tarihin")
        phoneNumberLabel = comonViews.createMiddleLabels(text: "Telefon Numaran")
        genderLabel = comonViews.createMiddleLabels(text: "Cinsiyetin")
        birthDayTf = comonViews.centralTextField(placeholder: "Gün")
        birthMonthTf = comonViews.centralTextField(placeholder: "Ay")
        birthYearTf = comonViews.centralTextField(placeholder: "Yıl")
        numberCountryCodeTf = comonViews.centralTextField(placeholder: "+90")
        phoneNumberTf = comonViews.centralTextField(placeholder: "")
        
        configureTextFields()

    }
    
    func configureTextFields(){
        birthDayTf.keyboardType = .numberPad
        birthMonthTf.keyboardType = .numberPad
        birthYearTf.keyboardType = .numberPad
        
    }
    
    
}



