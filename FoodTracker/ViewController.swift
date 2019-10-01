//
//  ViewController.swift
//  FoodTracker
//
//  Created by Sudikoff Lab iMac on 9/30/19.
//  Copyright © 2019 Rafa. All rights reserved.
//

import UIKit

// the comma "adopts" the UITextField Delegate "protocol"
class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties

    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // "self" refers to ViewController
        // So this class will now set itself as the delegate of the nameTextField element
        nameTextField.delegate = self
    }

    
    
    //MARK: UITextFieldDelegate
    
    // Gets called when the user taps out of the text-box
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        // Hide the keyboard
        textField.resignFirstResponder()
        
        return true
    }
    
    // Gets called when the text field resigns "first responder" status
    // recall first responder status directs input from the keyboard into the box with the status
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        mealNameLabel.text = textField.text
    }
    

    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        mealNameLabel.text = "Default Text"
    }
}

