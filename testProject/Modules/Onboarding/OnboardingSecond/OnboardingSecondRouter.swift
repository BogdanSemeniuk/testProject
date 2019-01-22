//
//  OnboardingSecondRouter.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/21/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import Foundation

protocol OnboardingSecondRouter {
    func finish()
}

class OnboardingSecondRouterImplementation: OnboardingSecondRouter {
    
    weak var view: OnboardingSecondController?
    
    init(view: OnboardingSecondController) {
        self.view = view
    }
    
    func finish() {
        UserDefaults.standard.set(true, forKey: UserDefaultsKeys.isOnboardingFinished)
        view?.navigationController?.viewControllers = [ViewController.instantiateFromStoryboard(withName: .main)]
    }
}
