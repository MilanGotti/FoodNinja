//
//  SignUpViewController.swift
//  FoodNInja
//
//  Created by viral on 18/08/21.
//

import UIKit

class SignUpViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var labelSignUp: UILabel!
    @IBOutlet weak var textFieldUserName: AppTextField!
    @IBOutlet weak var textFieldEmail: AppTextField!
    @IBOutlet weak var textFieldPassword: AppTextField!
    
    @IBOutlet weak var buttonKeepSignInCheck: UIButton!
    @IBOutlet weak var buttonEmailMeCheck: UIButton!
    
    @IBOutlet weak var labelKeepMeSignIn: UILabel!
    @IBOutlet weak var labelEmailMe: UILabel!
    @IBOutlet weak var buttonCreateAccount: UIButton!
    @IBOutlet weak var buttonAlreadyAccount: UIButton!
    //MARK: Declaration
    
    
    //MARK: View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }
    
    func setupView() {
        
        self.labelSignUp.setupLabel(font: AppFont.size25.semiBold, textColor: .appBlack)
        
        self.textFieldUserName.leftImage = #imageLiteral(resourceName: "Profile")
        self.textFieldUserName.placeholderTitle = AppString.placeholderUsername
        
        self.textFieldEmail.leftImage = #imageLiteral(resourceName: "Message")
        self.textFieldEmail.placeholderTitle = AppString.placeholderUsername
        
        self.textFieldPassword.leftImage = #imageLiteral(resourceName: "Lock")
        self.textFieldPassword.rightImage = #imageLiteral(resourceName: "eye_show")
        self.textFieldPassword.placeholderTitle = AppString.placeholderUsername
        
        self.labelKeepMeSignIn.setupLabel(font: AppFont.size14.regular, textColor: .appBlack)
        self.labelEmailMe.setupLabel(font: AppFont.size14.regular, textColor: .appBlack)
        
        self.buttonCreateAccount.setupButton(title: AppString.createAccount, font: AppFont.size15.bold, textColor: .defaultWhite)
        self.buttonAlreadyAccount.setupButton(title: AppString.alreadyAccount, font: AppFont.size15.medium, textColor: .appGreen)
        
        self.buttonCreateAccount.addTarget(self, action: #selector(buttonCreateAccountClick), for: .touchUpInside)
        self.buttonAlreadyAccount.addTarget(self, action: #selector(buttonAlreadyAccountClick), for: .touchUpInside)
    }
    
    
    //MARK: API Call
    
    
    //MARK: Button Actions
    @objc func buttonCreateAccountClick(_ sender: UIButton){
        let controller = AuthenticationRoute.SignUpProcessViewController.instance
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func buttonAlreadyAccountClick(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    //MARK: Others Methods
    

    
}
//MARK: Extensions
