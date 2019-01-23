//
//  UILabel+extension.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/23/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit

extension UILabel {
    @IBInspectable var localizedKey: String? {
        get {
            return self.localizedKey
        }
        set {
            guard let key = newValue else { return }
            self.text = NSLocalizedString(key, comment: "")
        }
    }
}
