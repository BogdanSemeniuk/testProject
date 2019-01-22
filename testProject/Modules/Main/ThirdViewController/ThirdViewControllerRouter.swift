//
//  ThirdViewControllerRouter.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/22/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import Foundation

protocol ThirdViewControllerRouter {
    func infoTapped()
    func detailsTapped()
}

class ThirdViewControllerRouterImplementation: ThirdViewControllerRouter {
    
    weak var view: ThirdViewController?
    
    init(view: ThirdViewController) {
        self.view = view
    }
    
    func infoTapped() {
        view?.navigationController?.pushViewController(
            InfoViewController.instantiateFromStoryboard(withName: .main), animated: true)
    }
    
    func detailsTapped() {
        view?.navigationController?.pushViewController(
            DetailViewController.instantiateFromStoryboard(withName: .main), animated: true)
    }
}
