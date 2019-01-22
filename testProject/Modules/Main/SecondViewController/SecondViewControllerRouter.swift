//
//  SecondViewControllerRouter.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/21/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import Foundation

protocol SecondViewControllerRouter {
    func goToThird()
}

class SecondViewControllerRouterImplementation: SecondViewControllerRouter {
    
    weak var view: SecondViewController?
    
    init(view: SecondViewController) {
        self.view = view
    }
    
    func goToThird() {
        view?.navigationController?.pushViewController(ThirdViewController.instantiateFromStoryboard(withName: .main), animated: true)
    }
    
}
