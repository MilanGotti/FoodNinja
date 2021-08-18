//
//  LoginViewController.swift
//  FoodNInja
//
//  Created by viral on 15/08/21.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var labelLoginTitle: UILabel!
    @IBOutlet weak var labelOr: UILabel!
    @IBOutlet weak var buttonFacebook: UIButton!
    @IBOutlet weak var buttonGoogle: UIButton!
    @IBOutlet weak var buttonCreate: UIButton!
    @IBOutlet weak var buttonForgotPass: UIButton!
    @IBOutlet weak var textFieldEmail: AppTextField!
    @IBOutlet weak var textFieldPassword: AppTextField!
    @IBOutlet weak var buttonNext: UIButton!
    
    //MARK: Declaration
    
    
    //MARK: View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupVied()
    }
    
    func setupVied(){
        self.labelLoginTitle.setupLabel(font: AppFont.size25.semiBold, textColor: .appBlack)
        self.textFieldEmail.placeholderTitle = AppString.placeholderEmail
        self.textFieldPassword.placeholderTitle = AppString.placeholderPassword
        self.textFieldPassword.rightImage = #imageLiteral(resourceName: "eye_show")
        self.labelOr.setupLabel(font: AppFont.size18.semiBold, textColor: .appBlack)
        
        let background = UIColor.defaultWhite.withAlphaComponent(0.25)
        self.buttonGoogle.setupButton(title: AppString.google, font: AppFont.size16.semiBold, textColor: .appBlack, background: background, isShadow: true, radius: 10.0)
        self.buttonFacebook.setupButton(title: AppString.facebook, font: AppFont.size16.semiBold, textColor: .appBlack, background: background, isShadow: true, radius: 10.0)
        self.buttonCreate.setupButton(title: AppString.createAccount, font: AppFont.size16.semiBold, textColor: .appBlack)
        self.buttonForgotPass.setupButton(title: AppString.forgotPassword, font: AppFont.size16.semiBold, textColor: .appBlack)
        
        self.buttonNext.setupButton(title: AppString.next, font: AppFont.size15.bold, textColor: .defaultWhite)
        self.buttonNext.addTarget(self, action: #selector(buttonNextClick), for: .touchUpInside)
    }
    
    //MARK: API Call
    
    
    //MARK: Button Actions
    @objc func buttonNextClick(_ sender: UIButton){
        let controller = AuthenticationRoute.SignUpViewController.instance
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    //MARK: Others Methods
    
    
    



}

//MARK: Extensions
