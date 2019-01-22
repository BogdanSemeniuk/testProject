//
//  OnboardingFirstRouter.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/21/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import Foundation

protocol OnboardingFirstRouter {
    func next()
}

class OnboardingFirstRouterImplementation: OnboardingFirstRouter {
    
    weak var view: OnboardingFirstController?
    
    init(view: OnboardingFirstController) {
        self.view = view
    }
    
    func next() {
        view?.navigationController?.pushViewController(
            OnboardingSecondController.instantiateFromStoryboard(withName: .onboarding), animated: true)
    }
}
