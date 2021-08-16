//
//  UITextField+Extension.swift
//  FoodNInja
//
//  Created by viral on 16/08/21.
//

import Foundation
import UIKit

extension UITextField {
    
    func addLeftPadding(size: CGFloat){
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: size, height: self.frame.height))
        self.leftViewMode = .always
    }
    
}
