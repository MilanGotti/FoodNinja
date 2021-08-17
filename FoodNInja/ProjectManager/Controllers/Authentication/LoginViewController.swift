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
    
    //MARK: Declaration
    
    
    //MARK: View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupVied()
    }
    
    func setupVied(){
        self.labelLoginTitle.setupLabel(font: AppFont.size25.semiBold, textColor: .appBlack)
        self.textFieldEmail.placeholderTitle = "Email"
        self.textFieldPassword.placeholderTitle = "Password"
        self.labelOr.setupLabel(font: AppFont.size18.semiBold, textColor: .appBlack)
        
        let background = UIColor.defaultWhite.withAlphaComponent(0.25)
        self.buttonGoogle.setupButton(title: "Google", font: AppFont.size17.semiBold, textColor: .appBlack, background: background, isShadow: true, radius: 10.0)
        self.buttonFacebook.setupButton(title: "Facebook", font: AppFont.size17.semiBold, textColor: .appBlack, background: background, isShadow: true, radius: 10.0)
        self.buttonCreate.setupButton(title: "Create Account", font: AppFont.size17.semiBold, textColor: .appBlack)
        self.buttonForgotPass.setupButton(title: "Forgot Password?", font: AppFont.size17.semiBold, textColor: .appBlack)
    }
    
    //MARK: API Call
    
    
    //MARK: Button Actions
    
    
    //MARK: Others Methods
    
    
    



}

//MARK: Extensions
