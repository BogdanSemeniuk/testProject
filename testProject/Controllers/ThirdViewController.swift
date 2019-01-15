//
//  ThirdViewController.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/14/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func infoButtonTapped(_ sender: UIButton) {
        coordinator?.showInfo()
    }
    
    @IBAction func detailsButtonTapped(_ sender: UIButton) {
        coordinator?.showDetails()
    }
}
