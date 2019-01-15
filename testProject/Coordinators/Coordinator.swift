//
//  Coordinator.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/14/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
    func finish()
}
