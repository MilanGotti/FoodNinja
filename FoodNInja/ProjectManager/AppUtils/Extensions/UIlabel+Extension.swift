//
//  UIlabel+Extension.swift
//  FoodNInja
//
//  Created by viral on 15/08/21.
//

import Foundation
import UIKit

extension UILabel {
    
    func setupLabel(font: UIFont, textColor: UIColor) {
        self.font = font
        self.textColor = textColor
    }
    
    func setupLabel(title: String, font: UIFont, textColor: UIColor) {
        self.text = title
        self.font = font
        self.textColor = textColor
    }
    
}
