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
    @IBOutlet weak var viewFacebook: UIView!
    @IBOutlet weak var viewGoogle: UIView!
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
        
        
        
    }
    
    //MARK: API Call
    
    
    //MARK: Button Actions
    
    
    //MARK: Others Methods
    
    
    



}

//MARK: Extensions
