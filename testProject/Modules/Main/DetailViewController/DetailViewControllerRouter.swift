//
//  DetailViewControllerRouter.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/22/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import Foundation

protocol DetailViewControllerRouter {
    func back()
}

class DetailViewControllerRouterImplementation: DetailViewControllerRouter {
    
    weak var view: DetailViewController?
    
    init(view: DetailViewController) {
        self.view = view
    }
    
    func back() {
        view?.navigationController?.popViewController(animated: true)
    }
}
