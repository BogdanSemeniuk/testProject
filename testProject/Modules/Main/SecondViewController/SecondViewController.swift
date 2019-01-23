//
//  SecondViewController.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/14/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, Storyboarded {
    
    var newsManager: NewsManager!
    var stocksManager: StocksManager!
    var router: SecondViewControllerRouter!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(#file) line \(#line) func \(#function)")
        nextButton.setTitle(NSLocalizedString("SecondViewController.nextButton", value: "**SecondViewController.nextButton**", comment: ""), for: .normal)
    }
    
    @IBAction func goToThirdTapped(_ sender: UIButton) {
        router.goToThird()
    }
}
