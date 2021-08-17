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
    
    var leftImage: UIImage? {
        didSet {
            self.setupImage()
        }
    }
    
    var rightImage: UIImage? {
        didSet {
            self.setupImage()
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
        self.borderStyle = .none
        self.backgroundColor = UIColor.defaultWhite.withAlphaComponent(0.25)
        self.layer.cornerRadius = 10
        self.addShadow(color: .defaultBlack, offSet: CGSize(width: 2, height: 2))
        self.setupImage()
    }
    
    func setupImage(){
        
        let height = self.frame.height
        
        if let leftIcon = self.leftImage {
            self.leftViewMode = .always
            let view = UIView(frame: CGRect(x: 0, y: 0, width: height, height: height))
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 25 , height: 25))
            imageView.center = view.center
            imageView.contentMode = .scaleAspectFit
            imageView.image = leftIcon
            view.addSubview(imageView)
            self.leftView = view
        } else {
            self.addLeftPadding(size: 15)
        }
        
        if let rightIcon = self.rightImage {
            self.rightViewMode = .always
            let view = UIView(frame: CGRect(x: 0, y: 0, width: height, height: height))
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 25 , height: 25))
            button.center = view.center
            button.addTarget(self, action: #selector(buttonEyeClick), for: .touchUpInside)
            button.setImage(rightIcon, for: .normal)
            view.addSubview(button)
            self.rightView = view
        }
        
    }
    
    @objc func buttonEyeClick(_ sender: UIButton){
        
    }
    
}
