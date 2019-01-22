//
//  ViewControllerRouter.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/21/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import Foundation

protocol ViewControllerRouter {
    func goToSecond()
}

class ViewControllerRouterImplementation: ViewControllerRouter {
    
    weak var view: ViewController?
    
    init(view: ViewController) {
        self.view = view
    }
    
    func goToSecond() {
        view?.navigationController?.pushViewController(SecondViewController.instantiateFromStoryboard(withName: .main), animated: true)
    }
}
