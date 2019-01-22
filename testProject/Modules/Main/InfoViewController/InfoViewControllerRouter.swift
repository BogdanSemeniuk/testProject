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
    
    weak var view: InfoViewController?
    
    init(view: InfoViewController) {
        self.view = view
    }
    
    func back() {
        view?.navigationController?.popViewController(animated: true)
    }
    
    func showGreeting(text: String) {
        let vc = GreetingViewController.instantiateFromStoryboard(withName: .main)
        vc.greetingText = text
        view?.navigationController?.pushViewController(vc, animated: true)
    }
}

