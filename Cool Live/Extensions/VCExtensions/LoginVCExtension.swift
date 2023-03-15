//
//  LoginVCExtension.swift
//  Cool Live
//
//  Created by Macbook Air on 15.03.2023.
//

import Foundation
import UIKit

extension LoginVC {
    @objc func resetPasswordBtnClicked(_ sender: UITapGestureRecognizer) {
        guard let label = sender.view as? UILabel else { return }
        let location = sender.location(in: label)
        guard let characterIndex = label.characterIndex(at: location) else { return }
            if characterIndex >= 20 && characterIndex <= 32 {
                //Do a opearations for reset password
                self.presentAlert(actions: [UIAlertAction(title: "OK", style: .cancel)])
            }
    }
    
    func configureTextButtons(){
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(resetPasswordBtnClicked(_:)))
        forgetPasswordLabel.isUserInteractionEnabled = true
        forgetPasswordLabel.addGestureRecognizer(gesture)
    }
}
