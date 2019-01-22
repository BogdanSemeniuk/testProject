//
//  ViewControllerAssembly.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/19/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import Swinject

final class ViewControllerAssembly: Assembly {
    func assemble(container: Container) {
        container.storyboardInitCompleted(OnboardingFirstController.self) { _, controller in
            controller.router = OnboardingFirstRouterImplementation(view: controller)
        }
        container.storyboardInitCompleted(OnboardingSecondController.self) { _, controller in
            controller.router = OnboardingSecondRouterImplementation(view: controller)
        }
        container.storyboardInitCompleted(ViewController.self) { resolver, controller in
            controller.newsManager = resolver.resolve(NewsManager.self)
            controller.router = ViewControllerRouterImplementation(view: controller)
        }
        container.storyboardInitCompleted(SecondViewController.self) { resolver, controller in
            controller.newsManager = resolver.resolve(NewsManager.self)
            controller.stocksManager = resolver.resolve(StocksManager.self)
            controller.router = SecondViewControllerRouterImplementation(view: controller)
        }
        container.storyboardInitCompleted(ThirdViewController.self) { (_, controller) in
            controller.router = ThirdViewControllerRouterImplementation(view: controller)
        }
        container.storyboardInitCompleted(DetailViewController.self) { (_, controller) in
            controller.router = DetailViewControllerRouterImplementation(view: controller)
        }
    }
}
