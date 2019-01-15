//
//  SecondViewController.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/14/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToThirdTapped(_ sender: UIButton) {
        coordinator?.showThird()
    }
}