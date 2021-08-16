//
//  FontConstants.swift
//  FoodNInja
//
//  Created by viral on 15/08/21.
//

import Foundation
import UIKit


//#MARK: FONT- SIZE

func fontSizeSeparated(size: CGFloat) -> CGFloat{
    if iPhone5 {
        return size - 2
    }else if iPhone8_SE_11Pro_mini {
        return size 
    }else if iPhone12Pro {
        return size + 0.5
    } else if iPhone8Plus_11_11ProMax {
        return size + 1.5
    } else if iPhone8Plus_11_11ProMax {
        return size + 2
    } else if iPhone12ProMax {
        return size + 2.5
    } else {
        return 3
    }
}


@available(iOS 13.0, *)
enum AppFont : CGFloat {
    case size7 = 7.0
    case size8 = 8.0
    case size9 = 9.0
    case size10 = 10.0
    case size11 = 11.0
    case size12 = 12.0
    case size13 = 13.0
    case size14 = 14.0
    case size15 = 15.0
    case size16 = 16.0
    case size17 = 17.0
    case size18 = 18.0
    case size19 = 19.0
    case size20 = 20.0
    case size21 = 21.0
    case size22 = 22.0
    case size23 = 23.0
    case size24 = 24.0
    case size25 = 25.0
    case size26 = 26.0
    case size27 = 27.0
    case size28 = 28.0
    case size29 = 29.0
    case size30 = 30.0
    case size31 = 31.0
    case size32 = 32.0
    case size33 = 33.0
    case size34 = 34.0
    case size35 = 35.0
    case size36 = 36.0
    case size37 = 37.0
    case size38 = 38.0
    case size39 = 39.0
    case size40 = 40.0
    
    
    var main : UIFont {
        return UIFont.init(name: sViga, size: fontSizeSeparated(size: self.rawValue))!
    }
    
    var regular : UIFont {
        return UIFont.init(name: sInterRegular, size: fontSizeSeparated(size: self.rawValue))!
    }

    var bold : UIFont {
        return UIFont.init(name: sInterBold, size: fontSizeSeparated(size: self.rawValue))!
    }
    
    var medium : UIFont {
        return UIFont.init(name: sInterMedium, size: fontSizeSeparated(size: self.rawValue))!
    }

    var semiBold : UIFont {
        return UIFont.init(name: sInterSemiBold, size: fontSizeSeparated(size: self.rawValue))!
    }

}


//#MARK: FONT
let sInterSemiBold = "Inter-SemiBold"
let sInterRegular = "Inter-Regular"
let sInterBold = "Inter-Bold"
let sInterMedium = "Inter-Medium"
let sViga = "Viga-Regular"
