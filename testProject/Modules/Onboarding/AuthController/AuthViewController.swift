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
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // Constraints
    @IBOutlet weak var constraintContentHeight: NSLayoutConstraint!
    @IBOutlet weak var bottomButtonConstraint: NSLayoutConstraint!
    
    var activeField: UITextField?
    var lastOffset: CGPoint!
    var keyboardHeight: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.delegate = self
        passwordTextField.delegate = self
        // Observe keyboard change
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillShow(notification:)),
                                               name: UIWindow.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillHide(notification:)),
                                               name: UIWindow.keyboardWillHideNotification, object: nil)
        
        // Add touch gesture for contentView
        self.contentView.addGestureRecognizer(UITapGestureRecognizer(target: self,
                                                                     action: #selector(returnTextView(gesture:))))

    }
    

    @objc func returnTextView(gesture: UIGestureRecognizer) {
        guard activeField != nil else {
            return
        }
        
        activeField?.resignFirstResponder()
        activeField = nil
    }
    
    @IBAction func continueAction(_ sender: UIButton) {
        router.finish()
    }
}

extension AuthViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        activeField = textField
        lastOffset = self.scrollView.contentOffset
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        activeField?.resignFirstResponder()
        activeField = nil
        return true
    }
}

extension AuthViewController {
    @objc func keyboardWillShow(notification: NSNotification) {
        if keyboardHeight != nil {
            return
        }
        
        if let keyboardSize = (notification.userInfo?[UIWindow.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            keyboardHeight = keyboardSize.height
            
            // move if keyboard hide input field
            let distanceToBottom = self.scrollView.frame.size.height - (activeField?.frame.origin.y)! - (activeField?.frame.size.height)!
            let collapseSpace = keyboardHeight - distanceToBottom
            
            if collapseSpace < 0 {
                // no collapse
                return
            }
            
            UIView.animate(withDuration: 0.3, animations: { [weak self] in
                guard let keyboardHeight = self?.keyboardHeight else { return }
                self?.constraintContentHeight.constant += keyboardHeight
                self?.bottomButtonConstraint.constant += keyboardHeight
            })
            
            // set new offset for scroll view
            UIView.animate(withDuration: 0.3, animations: { [weak self] in
                guard let lastOffset = self?.lastOffset else { return }
                // scroll to the position above keyboard 10 points
                self?.scrollView.contentOffset = CGPoint(x: lastOffset.x, y: collapseSpace + 10)
            })
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        UIView.animate(withDuration: 0.3) { [weak self] in
            guard let keyboardHeight = self?.keyboardHeight, let lastOffset = self?.lastOffset else { return }
            
            self?.constraintContentHeight.constant -= keyboardHeight
            self?.bottomButtonConstraint.constant -= keyboardHeight
            self?.scrollView.contentOffset = lastOffset
        }
        
        keyboardHeight = nil
    }
}
