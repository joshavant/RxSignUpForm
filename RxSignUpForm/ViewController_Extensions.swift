//
//  ViewController_Base.swift
//  RxSignUpForm
//
//  Created by Josh Avant on 6/5/16.
//  Copyright © 2016 JoshAvant. All rights reserved.
//

import UIKit

// returns true if one (and only one) @ exists in the given string
let emailAddressValidationPredicate = NSPredicate(format: "SELF MATCHES %@", "\\A[^@]+@[^@]+\\z")
let passwordMinimumLength = 8

extension ViewController {    
    @IBAction func signUpButtonPressed() {
        self.showAlert()
    }
    
    static func isValid(emailAddress emailAddress: String?) -> Bool {
        guard let anEmailAddress = emailAddress else {
            return false
        }
        
        return emailAddressValidationPredicate.evaluateWithObject(anEmailAddress)
    }
    
    static func isValid(password password: String?) -> Bool {
        guard let aPassword = password else {
            return false
        }
        
        return aPassword.characters.count >= passwordMinimumLength
    }
    
    func showAlert() {
        let alertController = UIAlertController(title: "Welcome!",
                                                message: "You're all signed up.",
                                                preferredStyle: .Alert)
        
        let okAction = UIAlertAction(title: "👍",
                                     style: .Default,
                                     handler: nil)
        
        alertController.addAction(okAction)
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
}
