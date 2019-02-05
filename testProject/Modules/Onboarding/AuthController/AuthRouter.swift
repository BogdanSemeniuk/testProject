//
//  AuthRouter.swift
//  testProject
//
//  Created by Богдан Семенюк on 2/5/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import Foundation

protocol AuthRouter {
    func finish()
}

class AuthRouterImplementation: AuthRouter {
    
    weak var view: AuthViewController?
    
    init(view: AuthViewController) {
        self.view = view
    }
    
    func finish() {
        view?.navigationController?.pushViewController(OnboardingFirstController.instantiateFromStoryboard(withName: .onboarding), animated: true)
    }
}
