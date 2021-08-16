//
//  UIView+Extension.swift
//  FoodNInja
//
//  Created by viral on 16/08/21.
//

import Foundation
import UIKit


extension UIView {
    func addShadow(color: UIColor, opacity: Float = 0.2, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius

      }
}
