//
//  UIButton+Extension.swift
//  FoodNInja
//
//  Created by viral on 15/08/21.
//

import Foundation
import UIKit

extension UIButton {
    
    func setupButton(title: String, font: UIFont, textColor: UIColor, background: UIColor = .clear, isShadow: Bool = false, radius: CGFloat = 0.0){
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = font
        self.setTitleColor(textColor, for: .normal)
        self.backgroundColor = background
        self.layer.cornerRadius = radius
        if isShadow {
            self.addShadow(color: .defaultBlack, offSet: CGSize(width: 2, height: 2))
        }
        
    }
    
    
    
}
