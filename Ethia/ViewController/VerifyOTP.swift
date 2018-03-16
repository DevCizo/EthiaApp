//
//  VerifyOTP.swift
//  Ethia
//
//  Created by Sandeep on 19/12/17.
//  Copyright © 2017 Sandeep. All rights reserved.
//

import UIKit

class VerifyOTP: UIViewController, UITextFieldDelegate {

    //MARK:- Outlet Declaration
    @IBOutlet var txtOTP1: UITextField!
    @IBOutlet var txtOTP2: UITextField!
    @IBOutlet var txtOTP3: UITextField!
    @IBOutlet var txtOTP4: UITextField!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK:- Button TouchUp
    @IBAction func btnBackAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    //MARK:- UITextField Delegate
    @IBAction func textFieldEditing(_ textField: UITextField) {
        if textField.text == "" {
            return
        }
        if textField.tag == 1 {
            txtOTP2.becomeFirstResponder()
        }else if textField.tag == 2 {  
            txtOTP3.becomeFirstResponder()
        }else if textField.tag == 3 {
            txtOTP4.becomeFirstResponder()
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if textField.text?.count == 1 && string != "" {
            return false
        }
        return true
    }
}
