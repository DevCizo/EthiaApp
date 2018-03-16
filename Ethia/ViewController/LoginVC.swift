//
//  LoginVC.swift
//  Ethia
//
//  Created by Sandeep on 19/12/17.
//  Copyright © 2017 Sandeep. All rights reserved.
//

import UIKit
import MRCountryPicker

class LoginVC: UIViewController, MRCountryPickerDelegate {
    
    //MARK:- Outlet Declaration
    @IBOutlet var btnLogin: UIButton!
    @IBOutlet var imgCountryFlag: UIImageView!
    @IBOutlet var lblCountryCode: UILabel!
    
    @IBOutlet var viewCountryPicker: UIView!
    @IBOutlet var countryPicker: MRCountryPicker!

    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnLogin.layer.cornerRadius = 3
        
        countryPicker.countryPickerDelegate = self
        countryPicker.showPhoneNumbers = true
        countryPicker.setCountry("SI")
        countryPicker.setLocale("sl_SI")
        countryPicker.setCountryByName("Canada")
        
        viewCountryPicker.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK:- Button TouchUp
    @IBAction func btnCountryCodeAction (_ sender: UIButton) {
        viewCountryPicker.isHidden = false
    }
    
    @IBAction func btnDoneCountryAction (_ sender: UIButton) {
        viewCountryPicker.isHidden = true
    }
    
    //MARK:- Country Picker Delegate
    func countryPhoneCodePicker(_ picker: MRCountryPicker, didSelectCountryWithName name: String, countryCode: String, phoneCode: String, flag: UIImage) {
        self.lblCountryCode.text = phoneCode
        self.imgCountryFlag.image = flag
    }
}
