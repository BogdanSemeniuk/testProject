//
//  OnboardingCoordinator.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/15/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

protocol OnboardingCoordinator: class {
    func showSecond()
    func finish()
}

class OnboardingCoordinatorImplementation: Coordinator, OnboardingCoordinator {
    
    var parentCoordinator: Coordinator?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController, parentCoordinator: Coordinator) {
        self.navigationController = navigationController
        self.parentCoordinator = parentCoordinator
    }
    
    func start() {
        let vc = OnboardingFirstController.instantiateFromStoryboard(withName: .onboarding)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func showSecond() {
        let vc = OnboardingSecondController.instantiateFromStoryboard(withName: .onboarding)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func finish() {
        parentCoordinator?.finish()
    }
}
