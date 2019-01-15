//
//  MainCoordinator.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/14/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

protocol MainCoordinator: class {
    func showSecond()
    func showThird()
    func showInfo()
    func showDetails()
    func back()
    func show(greeting: String)
}


class MainCoordinatorImplementation: Coordinator, MainCoordinator {
    
    var parentCoordinator: Coordinator?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController, parentCoordinator: Coordinator) {
        self.navigationController = navigationController
        self.parentCoordinator = parentCoordinator
    }
    
    func start() {
        let vc = ViewController.instantiateFromStoryboard(withName: .main)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func showSecond() {
        let vc = SecondViewController.instantiateFromStoryboard(withName: .main)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showThird() {
        let vc = ThirdViewController.instantiateFromStoryboard(withName: .main)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showInfo() {
        let vc = InfoViewController.instantiateFromStoryboard(withName: .main)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showDetails() {
        let vc = DetailViewController.instantiateFromStoryboard(withName: .main)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func back() {
        navigationController.popViewController(animated: true)
    }
    
    func show(greeting: String) {
        let vc = GreetingViewController.instantiateFromStoryboard(withName: .main)
        vc.coordinator = self
        vc.greetingText = greeting
        navigationController.pushViewController(vc, animated: true)
    }
    
    func finish() {
        
    }
}
