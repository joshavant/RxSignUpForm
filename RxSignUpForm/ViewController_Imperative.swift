////
////  ViewController.swift
////  RxSignUpForm
////
////  Created by Josh Avant on 6/5/16.
////  Copyright © 2016 JoshAvant. All rights reserved.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//    @IBOutlet var emailAddressTextField: UITextField!
//    @IBOutlet var emailAddressWarningLabel: UILabel!
//    @IBOutlet var passwordTextField: UITextField!
//    @IBOutlet var passwordWarningLabel: UILabel!
//    @IBOutlet var signUpButton: UIButton!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        self.emailAddressTextField.addTarget(self,
//                                             action: #selector(ViewController.textFieldDidChange(_:)),
//                                             forControlEvents: .EditingChanged)
//        
//        self.passwordTextField.addTarget(self,
//                                         action: #selector(ViewController.textFieldDidChange(_:)),
//                                         forControlEvents: .EditingChanged)
//    }
//    
//    func textFieldDidChange(textField: UITextField) -> Bool {
//        let emailAddressIsValid = ViewController.isValid(emailAddress: self.emailAddressTextField.text)
//        let passwordIsValid = ViewController.isValid(password: self.passwordTextField.text)
//        
//        if textField === self.emailAddressTextField {
//            self.emailAddressWarningLabel.hidden = emailAddressIsValid
//        } else if textField === self.passwordTextField {
//            self.passwordWarningLabel.hidden = passwordIsValid
//        }
//        
//        self.signUpButton.enabled = emailAddressIsValid && passwordIsValid
//        
//        return true
//    }
//}
