//
//  OnboardingSecondController.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/15/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

class OnboardingSecondController: UIViewController, Storyboarded {

    weak var coordinator: OnboardingCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func finishButtonTapped(_ sender: UIButton) {
        coordinator?.finish()
    }
}
