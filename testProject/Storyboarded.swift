//
//  Storyboarded.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/14/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiateFromStoryboard(withName name: StoryboardName) -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiateFromStoryboard(withName name: StoryboardName) -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        
        var storyboard: UIStoryboard!
        switch name {
        case .main: storyboard = UIStoryboard(name: name.rawValue.capitalized, bundle: Bundle.main)
        case .onboarding: storyboard = UIStoryboard(name: name.rawValue.capitalized, bundle: Bundle.main)
        }
        
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}

enum StoryboardName: String {
    case main, onboarding
}
