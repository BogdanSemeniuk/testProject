//
//  ThirdViewController.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/14/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, Storyboarded {
    
    var router: ThirdViewControllerRouter!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func infoButtonTapped(_ sender: UIButton) {
        router.infoTapped()
    }
    
    @IBAction func detailsButtonTapped(_ sender: UIButton) {
        router.detailsTapped()
    }
}
