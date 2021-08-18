//
//  SignUpProcessViewController.swift
//  FoodNInja
//
//  Created by viral on 18/08/21.
//

import UIKit

class SignUpProcessViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var buttonBack: UIButton!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDes: UILabel!
    @IBOutlet weak var textFieldFirstName: AppTextField!
    @IBOutlet weak var textFieldLastName: AppTextField!
    @IBOutlet weak var textFieldMobile: AppTextField!
    @IBOutlet weak var buttonNext: UIButton!
    
    //MARK: Declaration
    
    
    //MARK: View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }
    
    func setupView() {
        self.buttonBack.addTarget(self, action: #selector(buttonBackClick), for: .touchUpInside)
        
        self.labelTitle.setupLabel(title: AppString.getStarted, font: AppFont.size25.bold, textColor: .appBlack)
        self.labelDes.setupLabel(title: AppString.profileSecurity, font: AppFont.size13.regular, textColor: .appBlack)
        
        self.textFieldFirstName.placeholderTitle = AppString.placeholderFirstName
        self.textFieldLastName.placeholderTitle = AppString.placeholderLastName
        self.textFieldMobile.placeholderTitle = AppString.placeholderMobileNumber
        
        self.buttonNext.setupButton(title: AppString.next, font: AppFont.size15.bold, textColor: .defaultWhite)
        self.buttonNext.addTarget(self, action: #selector(buttonNextClick), for: .touchUpInside)
        
    }
    
    //MARK: API Call
    
    
    //MARK: Button Actions
    @objc func buttonBackClick(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func buttonNextClick(_ sender: UIButton){
        
    }
    
    //MARK: Others Methods
    
    
    

    

}
//MARK: Extensions
