//
//  AppCoordinator.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/14/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    var onboardingFlowIsFinished: Bool
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        if UserDefaults.standard.object(forKey: UserDefaultsKeys.isOnboardingFinished) as? Bool == true {
            onboardingFlowIsFinished = true
        } else {
            onboardingFlowIsFinished = false
        }
        let mainCoordinator = MainCoordinatorImplementation(navigationController: navigationController, parentCoordinator: self)
        let onboardingCoordinator = OnboardingCoordinatorImplementation(navigationController: navigationController, parentCoordinator: self)
        childCoordinators.append(mainCoordinator)
        childCoordinators.append(onboardingCoordinator)
    }
    
    func start() {
        for coordinator in childCoordinators {
            if onboardingFlowIsFinished {
                if let mainCoordinator = coordinator as? MainCoordinatorImplementation {
                    mainCoordinator.start()
                }
            } else {
                if let onboardingCoordinator = coordinator as? OnboardingCoordinatorImplementation {
                    onboardingCoordinator.start()
                }
            }
        }
    }
    
    func finish() {
        UserDefaults.standard.set(true, forKey: UserDefaultsKeys.isOnboardingFinished)
        onboardingFlowIsFinished = true
        navigationController.viewControllers = []
        start()
    }
}
