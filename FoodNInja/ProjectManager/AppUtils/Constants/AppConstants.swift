//
//  AppConstants.swift
//  FoodNInja
//
//  Created by viral on 15/08/21.
//

import Foundation
import UIKit

//MARK: Screen Size
let SCREEN = UIScreen.main.bounds
let SCREEN_WIDTH = UIScreen.main.bounds.size.width
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

let iPhone5 = UIScreen.main.bounds.size.width == 320
let iPhone8_SE_11Pro_mini  = UIScreen.main.bounds.size.width == 375
let iPhone12Pro = UIScreen.main.bounds.size.width == 390
let iPhone8Plus_11_11ProMax = UIScreen.main.bounds.size.width == 414
let iPhone12ProMax = UIScreen.main.bounds.size.width == 428



//MARK: APP INFORMATIONS
var APP_Title : String {
    get {
        if let app_name = Bundle.main.infoDictionary!["CFBundleName"] as? String {
            return app_name
        }
        else {
            return "FoodNinja"
        }
        
    }
    
}
