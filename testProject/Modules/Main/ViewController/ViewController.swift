//
//  ViewController.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/14/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    var newsManager: NewsManager!
    var router: ViewControllerRouter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(#file) line \(#line) func \(#function)")
    }
    
    @IBAction func goToSecondTapped(_ sender: UIButton) {
        router.goToSecond()
    }
}
