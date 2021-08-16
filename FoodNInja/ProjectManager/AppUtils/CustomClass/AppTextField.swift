//
//  AppTextField.swift
//  FoodNInja
//
//  Created by viral on 15/08/21.
//

import UIKit

class AppTextField: UITextField {

    var placeholderTitle: String = "" {
        didSet{
            self.placeholder = self.placeholderTitle
        }
    }
    
    override init(frame: CGRect) {
            super.init(frame: frame)
        self.setupInit()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            self.setupInit()
        }
    
    /*func setupXIB() {
        let view = UINib(nibName: "nib file name", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.translatesAutoresizingMaskIntoConstraints = true
        view.frame = self.bounds
        self.addSubview(view)
    }*/
    
    func setupInit() {
        
        self.font = AppFont.size16.regular
        self.textColor = .appBlack
        self.addLeftPadding(size: 15)
        self.borderStyle = .none
        self.backgroundColor = UIColor.defaultWhite.withAlphaComponent(0.25)
        self.layer.cornerRadius = 10
        self.addShadow(color: .defaultBlack, offSet: CGSize(width: 2, height: 2))
        
    }
    
    

}
