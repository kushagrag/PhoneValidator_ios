//
//  ValidateController.swift
//  PhoneValidator
//
//  Created by Kushagra Gupta on 10/08/16.
//  Copyright © 2016 Kushagra Gupta. All rights reserved.
//

import UIKit
import PhoneNumberKit

class ValidateController:UIViewController, UITextFieldDelegate{
    
    var number:String!
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var numberTextfield: UITextField!
    override func viewDidLoad() {
       super.viewDidLoad()
    }
    
    @IBAction func validateNumber(sender: UIButton) {
        numberTextfield.resignFirstResponder()
        number = numberTextfield.text
        if number != ""{
            do {
                _ = try PhoneNumber(rawNumber:number!)
                displayLabel.text = "Valid number"
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://\(number)")!)
            }
            catch {
                displayLabel.text = "Number is invalid"
            }
        }
        else{
            displayLabel.text = "Type a number"
        }
    }
    @IBAction func fbLink(sender: UIButton) {
        UIApplication.sharedApplication().openURL(NSURL(string : "https://www.facebook.com/kushagra.gupta.9440")!)
    }
}
