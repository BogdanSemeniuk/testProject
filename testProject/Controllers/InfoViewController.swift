//
//  InfoViewController.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/14/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        coordinator?.back()
    }
    
    @IBAction func showHiGreeting(_ sender: UIButton) {
        coordinator?.show(greeting: "Hi!!!")
    }
    
    @IBAction func showHelloGreeting(_ sender: UIButton) {
        coordinator?.show(greeting: "Hello!")
    }
    
}
