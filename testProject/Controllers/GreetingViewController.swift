//
//  GreetingViewController.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/15/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?
    var greetingText: String!
    @IBOutlet private weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = greetingText
    }
}
