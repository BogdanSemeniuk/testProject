//
//  InfoViewControllerRouter.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/22/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import Foundation

protocol InfoViewControllerRouter {
    func back()
    func showGreeting(text: String)
}

class InfoViewControllerRouterImplementation: InfoViewControllerRouter {
    
    weak var view: DetailViewController?
    
    init(view: DetailViewController) {
        self.view = view
    }
    
    func back() {
        view?.navigationController?.popViewController(animated: true)
    }
    
    func showGreeting(text: String) {
        view?.navigationController?.pushViewController(
            GreetingViewController.instantiateFromStoryboard(withName: .main), animated: true)
    }
}

