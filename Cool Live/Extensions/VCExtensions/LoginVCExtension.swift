//
//  LoginVCExtension.swift
//  Cool Live
//
//  Created by Macbook Air on 15.03.2023.
//

import Foundation
import UIKit

extension LoginVC : UITextFieldDelegate {
    
    func configureTextFields(){
        usernameTf.delegate = self
        passwordTf.delegate = self
        
    }
    func hideKeyBoard(){
        let dissmisKybrdGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(dissmisKybrdGesture)
    }
    
    @objc
    func dismissKeyboard(){
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case passwordTf :
            // Do login operations. You can write here the function which is the same with login button function
            print("Giriş yap")
        case usernameTf :
            passwordTf.becomeFirstResponder()
        default :
            print("An error occured")
        }
        return true
    }
    
}


extension LoginVC {
    
    @objc
    func resetPasswordTextClicked(_ sender: UITapGestureRecognizer) {
        
        //Do a opearations for reset password
        self.presentAlert(actions: [UIAlertAction(title: "OK", style: .cancel)])
            
    }
    
    @objc
    func toSignInTextClicked(_ sender : UITapGestureRecognizer){
        
                let destinationVC = SignInVC()
                let navigationController = UINavigationController(rootViewController: destinationVC)
                navigationController.modalPresentationStyle = .fullScreen
                self.present(navigationController, animated: true)
            
        
    }
    
    func configureTextButtons(){
        
        let resetPasswordGesture = UITapGestureRecognizer(target: self, action: #selector(resetPasswordTextClicked(_:)))
        forgetPasswordLabel.isUserInteractionEnabled = true
        forgetPasswordLabel.addGestureRecognizer(resetPasswordGesture)
        
        let toSignInGesture = UITapGestureRecognizer(target: self, action: #selector(toSignInTextClicked(_:)))
        signInLabel.isUserInteractionEnabled = true
        signInLabel.addGestureRecognizer(toSignInGesture)
    }
    
}

extension LoginVC {
    
    func configureObjectsForViewController(){
        
        greetingsLabel = commonViews.createHeadersLabel(boldHeader: "Giriş Yap", normalText: "Seni yeniden aramızda gördüğümüze çok sevindik. Bir tuşla dünyaya ulaş")
        signInBtn = commonViews.createMainActionButton(title: "Giriş Yap")
        signInLabel = commonViews.labelWithLink(normalText: "Henüz bir hesabın yok mu? ", linkedText: "Kayıt ol")
        orLoginText = commonViews.orLoginText(text: "------------- veya giriş yap -------------")
        logo = commonViews.logo
        forgetPasswordLabel = commonViews.labelWithLink(normalText: "Şifreni mi unuttun? ", linkedText: "Şifreni Yenile")
        facebookLoginBtn = commonViews.facebookLoginBtn
        googleLoginBtn = commonViews.googleLoginBtn
        usernameTf = commonViews.centralTextField(placeholder: "Ad Soyad")
        passwordTf = commonViews.passwordTf
    }
}
