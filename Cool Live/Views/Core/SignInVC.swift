//
//  SignInVC.swift
//  Cool Live
//
//  Created by Macbook Air on 16.03.2023.
//

import UIKit

class SignInVC: UIViewController {

    let comonViews = CommonViews()
    
    //Main components

    var logo : UIImageView!
    var googleBtn : UIButton!
    var facebookBtn : UIButton!
    var headerText : UILabel!
    var usernameTf : UITextField!
    var emailTf : UITextField!
    var passwordTf : UITextField!
    var passwordTfAgain : UITextField!
    var loginWithLabel : UILabel!
    var birthDateLabel : UILabel!
    var phoneNumberLabel : UILabel!
    var genderLabel : UILabel!
    var toLoginPageLabel : UILabel!
    var vcBackground : UIImageView!
    var continueBtn : UIButton!
    var birthDayTf : UITextField!
    var birthMonthTf : UITextField!
    var birthYearTf : UITextField!
    var numberCountryCodeTf : UITextField!
    var phoneNumberTf : UITextField!
    //
    
    var selectGender : UISegmentedControl = {
        let segment = UISegmentedControl(items: ["Erkek" , "Kadın"])
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.selectedSegmentTintColor = .systemPink
        return segment
    }()
    
    private var scrollView : UIScrollView = {
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: deviceWidth, height: deviceHeight))
        scrollView.isScrollEnabled = true
        scrollView.contentSize = CGSize(width: deviceWidth, height: deviceHeight + 200)
        return scrollView
    }()
    
    var contentView : UIView = {
        let view = UIView()
        return view
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureObjectsForViewController()
        contentView.frame = CGRect(origin: .zero, size: scrollView.contentSize)
        contentView.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .white
        
        view.backgroundColor = .white
        view.addSubview(scrollView)
        contentView.addSubviews([logo,vcBackground,headerText,usernameTf,emailTf,passwordTf , passwordTfAgain,birthDateLabel,birthDayTf,birthMonthTf,birthYearTf,phoneNumberLabel,phoneNumberTf,numberCountryCodeTf, genderLabel , selectGender,continueBtn, loginWithLabel , googleBtn , facebookBtn , toLoginPageLabel])
        
        scrollView.delegate = self
        scrollView.addSubview(contentView)
        
       
       
        
        
        
        
        
        
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLayoutSubviews() {
        setConstraints()
    }
    
}
