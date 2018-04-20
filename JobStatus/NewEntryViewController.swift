//
//  NewEntryViewController.swift
//  JobStatus
//
//  Created by Rimil Dey on 19/04/18.
//  Copyright © 2018 Rimil Dey. All rights reserved.
//

import UIKit

class NewEntryViewController: UIViewController, UITextFieldDelegate {

    // MARK: - view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextField()
    }
    
    // MARK: - outlets
    @IBOutlet weak var companyTextfield: UITextField!
    @IBOutlet weak var sourceTextfield: UITextField!
    @IBOutlet weak var positionTextfield: UITextField!
    @IBOutlet var textFields: [UITextField]!
    
    func setupTextField() {
        for textField in textFields {
            textField.delegate = self
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
