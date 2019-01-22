//
//  InfoViewController.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/14/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController, Storyboarded {
    
    var router: InfoViewControllerRouter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        router.back()
    }
    
    @IBAction func showHiGreeting(_ sender: UIButton) {
        router.showGreeting(text: "Hi!!!")
    }
    
    @IBAction func showHelloGreeting(_ sender: UIButton) {
        router.showGreeting(text: "Hello!")
    }
    
}
