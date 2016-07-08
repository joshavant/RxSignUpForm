//
//  ViewController.swift
//  RxSignUpForm
//
//  Created by Josh Avant on 6/5/16.
//  Copyright © 2016 JoshAvant. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    @IBOutlet var emailAddressTextField: UITextField!
    @IBOutlet var emailAddressWarningLabel: UILabel!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var passwordWarningLabel: UILabel!
    @IBOutlet var signUpButton: UIButton!

    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()

        emailAddressTextField.rx_text
            .map({ ViewController.isValid(emailAddress: $0) })
            .bindTo(emailAddressWarningLabel.rx_hidden)
            .addDisposableTo(disposeBag)

        passwordTextField.rx_text
            .map({ ViewController.isValid(password: $0) })
            .bindTo(passwordWarningLabel.rx_hidden)
            .addDisposableTo(disposeBag)
        
        Observable.combineLatest(emailAddressTextField.rx_text, passwordTextField.rx_text) {
                ViewController.isValid(emailAddress: $0) && ViewController.isValid(password: $1)
            }
            .bindTo(signUpButton.rx_enabled)
            .addDisposableTo(disposeBag)
    }
}
