//
//  UIButton+Extension.swift
//  FoodNInja
//
//  Created by viral on 15/08/21.
//

import Foundation
import UIKit

extension UIButton {
    
    func setupButton(title: String, font: UIFont, textColor: UIColor){
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = font
        self.setTitleColor(textColor, for: .normal)
    }
    
    
    
}
