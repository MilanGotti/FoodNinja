//
//  TutorialViewController.swift
//  FoodNInja
//
//  Created by viral on 15/08/21.
//

import UIKit

class TutorialViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var buttonNext: UIButton!
    @IBOutlet weak var imageTutorial: UIImageView!
    
    //MARK: Declaration
    var firstScreen = true
    
    //MARK: View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }
    
    func setupView(){
        self.imageTutorial.image = appImages.tutorials1
        self.labelTitle.setupLabel(title: AppString.tutorial1Title, font: AppFont.size23.bold, textColor: .appBlack)
        self.labelDescription.setupLabel(title: AppString.tutorial1Des, font: AppFont.size12.medium, textColor: .appBlack)
        self.buttonNext.setupButton(title: AppString.next, font: AppFont.size15.bold, textColor: .defaultWhite)
        self.buttonNext.addTarget(self, action: #selector(buttonNextClick), for: .touchUpInside)
    }
    
    //MARK: API Call
    
    
    //MARK: Button Actions
    @objc func buttonNextClick(_ sender: UIButton){
        if self.firstScreen {
            self.firstScreen = false
            UIView.transition(with: self.imageTutorial, duration: 0.75, options: .transitionCrossDissolve,  animations: {
                                self.imageTutorial.image = appImages.tutorial2
                                self.labelTitle.text = AppString.tutorial2Title
                                self.labelDescription.text = AppString.tutorial2Des
                              }, completion: nil)
        } else {
            let controller = AuthenticationRoute.LoginViewController.instance as! LoginViewController
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    
    //MARK: Others Methods
    

    
}
//MARK: Extension
