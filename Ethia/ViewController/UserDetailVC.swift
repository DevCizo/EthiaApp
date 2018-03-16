//
//  UserDetailVC.swift
//  Ethia
//
//  Created by Sandeep on 02/01/18.
//  Copyright © 2018 Sandeep. All rights reserved.
//

import UIKit

class UserDetailVC: UIViewController {

    // MARK:- Outlet Declaration
    @IBOutlet var btnMale: UIButton!
    @IBOutlet var btnFemale: UIButton!
    
    @IBOutlet var btnLEye: UIButton!
    @IBOutlet var btnREye: UIButton!
    
    // MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK:- Button TouchUp
    @IBAction func btnGenderAction(_ sender: UIButton) {
        btnMale.backgroundColor = UIColor.white
        btnFemale.backgroundColor = UIColor.white
        if sender.tag == 1 {
            btnMale.backgroundColor = UIColor.lightGray
        }else{
            btnFemale.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBAction func btnEyeAction(_ sender: UIButton) {
        btnLEye.isSelected = false
        btnREye.isSelected = false
        if sender.tag == 1 {
            btnLEye.isSelected = true
        }else{
            btnREye.isSelected = true
        }
    }
}
