
//  LoginVC.swift
//  Cool Live
//
//  Created by Macbook Air on 15.03.2023.
//

import UIKit

class LoginVC: UIViewController {
    
    
    var logo : UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "logo")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var vcBackground : UIImageView = {
        let view = UIImageView(frame: CGRect(x: 0, y: deviceHeight * 0.15, width: deviceWidth, height: deviceHeight * 0.85))
        view.image = UIImage(named: "vc_bg_image")
        return view
    }()
    
    var greetingsLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        var attrText = NSMutableAttributedString(string: "Giriş Yap" , attributes: [.foregroundColor : UIColor.black , .font : UIFont.boldSystemFont(ofSize: 32)])
        var normalText = NSAttributedString(string: "\nSeni yeniden aramızda gördüğümüze çok sevindik. Bir tuşla dünyaya ulaş" , attributes: [.foregroundColor : UIColor.gray])
        label.numberOfLines = 4
        attrText.append(normalText)
        label.attributedText = attrText
        return label
    }()
    var usernameTf : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Ad Soyad"
        tf.backgroundColor = UIColor(red: 177, green: 177, blue: 177)
        tf.layer.cornerRadius = 10
        return tf
    }()
    
    var passwordTf : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Şifre Gir"
        tf.backgroundColor = UIColor(red: 177, green: 177, blue: 177)
        tf.isSecureTextEntry = true
        tf.layer.cornerRadius = 10

        return tf
    }()
    
    var signInBtn : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .systemPink
        btn.setTitle("GİRİŞ YAP", for: .normal)
        btn.layer.cornerRadius = 10
        btn.tintColor = .white
        return btn
    }()
    
    var forgetPasswordLabel : UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        let attributedString = NSMutableAttributedString(string: "Şifreni mi unuttun?" ,attributes: [.foregroundColor : UIColor.gray , .font : UIFont.systemFont(ofSize: 13)])
        
        let resetpass = NSMutableAttributedString(string: "Şifreni Yenile" ,attributes: [.foregroundColor : UIColor.black , .font : UIFont.boldSystemFont(ofSize: 13)])
        attributedString.append(resetpass)
        label.attributedText = attributedString
        return label
    }()
   
    var orLoginText : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        var attrText = NSAttributedString(string: "------------- veya giriş yap -------------" , attributes: [.foregroundColor : UIColor(red: 177, green: 177, blue: 177)])
        label.textAlignment = .center
        label.attributedText = attrText
        return label
    }()
    
    var googleLoginBtn : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "google-logo") // Replace with your image name
        let size = CGSize(width: 30, height: 30)
        
        UIGraphicsBeginImageContext(size)
        image?.draw(in: CGRect(origin: .zero, size: size))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        btn.setImage(resizedImage, for: .normal)
        btn.layer.cornerRadius = 5
        btn.layer.borderColor = UIColor(red: 177, green: 177, blue: 177).cgColor
        btn.layer.borderWidth = 3
        var title = NSAttributedString(string: "Google" , attributes: [.foregroundColor : UIColor(red: 177, green: 177, blue: 177) , .font : UIFont.boldSystemFont(ofSize: 15)])
        
        btn.setAttributedTitle(title, for: .normal)
        return btn
    }()
    
    var facebookLoginBtn : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "facebook-logo")
        let size = CGSize(width: 30, height: 30)
        
        UIGraphicsBeginImageContext(size)
        image?.draw(in: CGRect(origin: .zero, size: size))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        btn.setImage(resizedImage, for: .normal)
        btn.layer.cornerRadius = 5
        btn.layer.borderWidth = 3
        btn.layer.borderColor = UIColor(red: 177, green: 177, blue: 177).cgColor
        var title = NSAttributedString(string: "Facebook" , attributes: [.foregroundColor : UIColor(red: 177, green: 177, blue: 177) , .font : UIFont.boldSystemFont(ofSize: 15)])
        
        btn.setAttributedTitle(title, for: .normal)
        return btn
    }()
    
    var signInLabel : UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        let attrString = NSMutableAttributedString(string: "Henüz bir hesabın yok mu?  " , attributes: [.foregroundColor : UIColor(red: 177, green: 177, blue: 177) , .font : UIFont.systemFont(ofSize: 15)])
        var signInText = NSAttributedString(string: "Kayıt Ol", attributes: [.font : UIFont.boldSystemFont(ofSize: 15) , .foregroundColor : UIColor.black])
        attrString.append(signInText)
        label.attributedText = attrString
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
        view.addSubviews([logo,vcBackground,greetingsLabel,usernameTf,passwordTf ,signInBtn , forgetPasswordLabel,orLoginText , facebookLoginBtn , googleLoginBtn , signInLabel])
        configureTextButtons()
        view.sendSubviewToBack(vcBackground)
        
    }
    override func viewDidLayoutSubviews() {
        setConstraints()
    }
    
}

