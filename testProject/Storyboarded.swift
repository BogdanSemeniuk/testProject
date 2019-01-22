//
//  Storyboarded.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/14/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit
import SwinjectStoryboard

protocol Storyboarded {
    static func instantiateFromStoryboard(withName name: StoryboardName) -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiateFromStoryboard(withName name: StoryboardName) -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        
        let storyboard: UIStoryboard = SwinjectStoryboard
            .create(name: name.rawValue.capitalized, bundle: Bundle.main, container: DIConainer.resolver)
        
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
