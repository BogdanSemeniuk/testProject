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
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var detailsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("\(#file) line \(#line) func \(#function)")
        infoButton.setTitle(NSLocalizedString("ThirdViewController.infoButton", value: "**ThirdViewController.infoButton**", comment: ""), for: .normal)
        detailsButton.setTitle(NSLocalizedString("ThirdViewController.detailsButton", value: "**ThirdViewController.detailsButton**", comment: ""), for: .normal)
    }
    
    @IBAction func infoButtonTapped(_ sender: UIButton) {
        router.infoTapped()
    }
    
    @IBAction func detailsButtonTapped(_ sender: UIButton) {
        router.detailsTapped()
    }
}
