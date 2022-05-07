//
//  MovieLoginView.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 07/05/22.
//

import UIKit

class MovieLoginView: UIView
{
    private lazy var stackViewContainer    :   UIStackView =
    {
        let stackView           =   UIStackView()
        stackView.backgroundColor   =   UIColor.clear
        stackView.axis          =   .vertical
        stackView.spacing       =   0
        stackView.alignment     =   .center
        stackView.distribution  =   .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints =   false
        
        return stackView
    }()
    
    private lazy var stackHeader    :   UIStackView =
    {
        let stackView           =   UIStackView()
        stackView.backgroundColor   =   UIColor.clear
        stackView.axis          =   .horizontal
        stackView.spacing       =   0
        stackView.alignment     =   .center
        stackView.distribution  =   .fillEqually
        stackView.isLayoutMarginsRelativeArrangement        =   true
        stackView.layoutMargins =   UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        stackView.translatesAutoresizingMaskIntoConstraints =   false
        
        return stackView
    }()
    
    private lazy var imgCompanyIcon        :   UIImageView =
    {
        let imageView   =   UIImageView(image: UIImage(named: "MOVIE_ICON"))
        imageView.translatesAutoresizingMaskIntoConstraints =   false
        
        return imageView
    }()
    
    private lazy var lbTitleCompnay         :   UILabel =
    {
        let label   =   UILabel()
        label.text  =   NSLocalizedString("login-company-title", comment: "")
        label.font  =   UIFont.radioCanadaSemiBold(size: 30.0)
        label.textColor =   .white
        
        return label
    }()
    
    private lazy var stackBody :   UIStackView =
    {
        let stackView           =   UIStackView()
        stackView.backgroundColor   =   UIColor.clear
        stackView.axis          =   .vertical
        stackView.spacing       =   15
        stackView.alignment     =   .leading
        stackView.distribution  =   .equalSpacing
        stackView.isLayoutMarginsRelativeArrangement        =   true
        stackView.layoutMargins =   UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)
        stackView.translatesAutoresizingMaskIntoConstraints =   false
        
        return stackView
    }()
    
    internal lazy var txtUsername    :   UITextField =
    {
        let textField           =   UITextField()
        textField.setLeftPaddingPoints(15.0)
        textField.tag                   =   1
        textField.keyboardType          =   .emailAddress
        textField.layer.cornerRadius    =   3
        textField.textColor             =   UIColor.white
        textField.font                  =   UIFont.radioCanadaRegular(size: 15)
        textField.backgroundColor       =   UIColor(red: 69/255, green: 69/255, blue: 69/255, alpha: 1)
        textField.placeholder   =   NSLocalizedString("login-username-placeholder", comment: "")
        textField.translatesAutoresizingMaskIntoConstraints =   false
        
        return textField
    }()
    
    internal lazy var txtPassword    :   UITextField =
    {
        let textField           =   UITextField()
        textField.setLeftPaddingPoints(15.0)
        textField.tag                   =   2
        textField.layer.cornerRadius    =   3
        textField.isSecureTextEntry     =   true
        textField.textColor             =   UIColor.white
        textField.font                  =   UIFont.radioCanadaRegular(size: 15)
        textField.backgroundColor       =   UIColor(red: 69/255, green: 69/255, blue: 69/255, alpha: 1)
        textField.placeholder   =   NSLocalizedString("login-password-placeholder", comment: "")
        textField.translatesAutoresizingMaskIntoConstraints =   false
        
        return textField
    }()
    
    private lazy var btnSignIn  :   UIButton    =
    {
        let button   =   UIButton()
        button.layer.cornerRadius   =   3
        button.titleLabel?.font =   UIFont.radioCanadaRegular(size: 18)
        button.backgroundColor  =   UIColor(red: 229/255, green: 9/255, blue: 20/255, alpha: 1)
        button.setTitle(NSLocalizedString("login-sign-in", comment: ""), for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints    =   false
        
        return button
    }()
    
    internal lazy var lbErrorMessage         :   UILabel =
    {
        let label   =   UILabel()
        label.font  =   UIFont.radioCanadaSemiBold(size: 15.0)
        label.textColor     =   .systemRed
        label.numberOfLines =   0
        
        return label
    }()
    
    public override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        self.loadComponent()
        self.loadComponentLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func loadComponent()
    {
        self.stackHeader.addArrangedSubview(self.lbTitleCompnay)
        self.stackHeader.addArrangedSubview(self.imgCompanyIcon)
        
        self.stackBody.addArrangedSubview(txtUsername)
        self.stackBody.addArrangedSubview(txtPassword)
        self.stackBody.addArrangedSubview(btnSignIn)
        self.stackBody.addArrangedSubview(lbErrorMessage)
        
        self.stackViewContainer.addArrangedSubview(self.stackHeader)
        self.stackViewContainer.addArrangedSubview(self.stackBody)
        
        self.addSubview(self.stackViewContainer)
    }
    
    private func loadComponentLayout()
    {
        NSLayoutConstraint.activate([
            
            self.stackViewContainer.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            self.stackViewContainer.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            self.stackViewContainer.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30),
            self.stackViewContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30),
            
            self.txtUsername.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            self.txtUsername.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30),
            self.txtUsername.heightAnchor.constraint(equalToConstant: 50),
            
            self.txtPassword.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            self.txtPassword.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30),
            self.txtPassword.heightAnchor.constraint(equalToConstant: 50),
            
            self.btnSignIn.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            self.btnSignIn.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30),
            self.btnSignIn.heightAnchor.constraint(equalToConstant: 50),
            
            self.imgCompanyIcon.heightAnchor.constraint(equalToConstant: 120)
        ])
    }
}
