
//  LoginVC.swift
//  Cool Live
//
//  Created by Macbook Air on 15.03.2023.
//

import UIKit

class LoginVC: UIViewController {
    
    
    let commonViews =  CommonViews()
    
    var greetingsLabel : UILabel!
    
    var signInBtn : UIButton!
    
    var signInLabel : UILabel!

    var orLoginText : UILabel!

    var forgetPasswordLabel : UILabel!
    
    var logo : UIImageView!
   
    var usernameTf : UITextField!
    
    var passwordTf : UITextField!
    
    var facebookLoginBtn : UIButton!
    
    var googleLoginBtn : UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        configureObjectsForViewController()
        view.addSubviews([logo,commonViews.vcBackground,greetingsLabel,usernameTf,passwordTf ,signInBtn , forgetPasswordLabel,orLoginText , facebookLoginBtn , googleLoginBtn , signInLabel])
        
        configureTextButtons()
        configureTextFields()
        hideKeyBoard()
        view.sendSubviewToBack(commonViews.vcBackground)
        
    }
    override func viewDidLayoutSubviews() {
        setConstraints()
    }
    
}

