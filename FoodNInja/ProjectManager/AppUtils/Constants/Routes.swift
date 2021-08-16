//
//  Routes.swift
//  FoodNInja
//
//  Created by viral on 15/08/21.
//

import Foundation
import UIKit


enum AuthenticationRoute: String {
    
    case TutorialViewController = "TutorialViewController"
    case LoginViewController = "LoginViewController"
    
    var instance: UIViewController {
        return UIStoryboard(name: StoryBoards.Authentication, bundle: nil).instantiateViewController(identifier: self.rawValue)
    }
}
