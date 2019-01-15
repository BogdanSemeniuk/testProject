//
//  OnboardingFirstController.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/15/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

class OnboardingFirstController: UIViewController, Storyboarded {

    weak var coordinator: OnboardingCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        coordinator?.showSecond()
    }
    
}
