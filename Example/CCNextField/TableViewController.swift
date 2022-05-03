//
//  ViewController.swift
//  CCNextField
//
//  Created by 40695330 on 05/03/2022.
//  Copyright (c) 2022 40695330. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, UITextFieldDelegate {
    
    @IBOutlet weak var resignsSwith: UISwitch!
    @IBOutlet weak var optionsView: UIView!
    @IBOutlet weak var optionsIconView: UIView!
    
    // MARK: - 1 Connect textFields to ViewController
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var nameIconView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var emailIconView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var passwordIconView: UIView!
    
    private var resigns = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
           
        setupTextFields()
        setupView()
    }
    
    
    
    // MARK: - 2 Connect textFields to delegate and set tag number
    
    private func setupTextFields() {
        
        nameTextField.becomeFirstResponder()
        
        /// add all your textFields
        let textFields = [nameTextField,
                          emailTextField,
                          passwordTextField]
        
        /// connect textFields to delegate
        for field in textFields {
            field!.delegate = self
            field!.tag = textFields.firstIndex(of: field)!
        }
    }
    
    // MARK: - 3 Conform to the textFieldShouldReturn()
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        /// get current textField and add nextField to it.
        /// set (resigns) to true to hide keyboard, or false to just execute your function.
        textField.nextField(resigns: resigns) {
            
            /// pass function to execute or leave empty
            print("noice")
        }
        
        return false
    }
    
    
    
    private func setupView() {
        
        let views = [optionsView, optionsIconView,
                     nameView, nameIconView,
                     emailView, emailIconView,
                     passwordView, passwordIconView]
        for i in views { i!.curved() }
    }
    
    @IBAction func resignsSwitchTUI(_ sender: UISwitch) {
        
        let isOn = sender.isOn
        
        resigns = isOn
    }
    
}
