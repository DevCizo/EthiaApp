//
//  RegisterVC.swift
//  Ethia
//
//  Created by Sandeep on 19/12/17.
//  Copyright © 2017 Sandeep. All rights reserved.
//

import UIKit
import MRCountryPicker

class RegisterVC: UIViewController, MRCountryPickerDelegate {

    //MARK:- Outlet Declaration
    @IBOutlet var btnRequestCode: UIButton!
    @IBOutlet var imgCountryFlag: UIImageView!
    @IBOutlet var lblCountryCode: UILabel!
    
    @IBOutlet var viewCountryPicker: UIView!
    @IBOutlet var countryPicker: MRCountryPicker!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnRequestCode.layer.cornerRadius = 3
        
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
    @IBAction func btnLoginAction (_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
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
