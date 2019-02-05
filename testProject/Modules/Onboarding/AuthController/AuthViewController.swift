//
//  AuthViewController.swift
//  testProject
//
//  Created by Богдан Семенюк on 2/5/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController, Storyboarded {
    
    var router: AuthRouter!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func continueAction(_ sender: UIButton) {
        router.finish()
    }
}
