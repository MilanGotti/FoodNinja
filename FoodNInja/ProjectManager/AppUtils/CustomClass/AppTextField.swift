//
//  AppTextField.swift
//  FoodNInja
//
//  Created by viral on 15/08/21.
//

import UIKit

class AppTextField: UITextField {

    override init(frame: CGRect) {
            super.init(frame: frame)
            
            // Setup view from .xib file
            
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            
            // Setup view from .xib file
            
        }
    
    /*func setupXIB() {
        let view = UINib(nibName: "nib file name", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.translatesAutoresizingMaskIntoConstraints = true
        view.frame = self.bounds
        self.addSubview(view)
    }*/
    
    func setupInit() {
        
    }
    
    

}
