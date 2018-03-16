//
//  UserProfileVC.swift
//  Ethia
//
//  Created by Sandeep on 31/12/17.
//  Copyright © 2017 Sandeep. All rights reserved.
//

import UIKit

class UserProfileVC: UIViewController {

    //MARK:- Outlet Declaration
    @IBOutlet var btnLoyalty: UIButton!
    @IBOutlet var btnTransaction: UIButton!
    
    @IBOutlet var imgTxtBG: UIImageView!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnLoyalty.layer.cornerRadius = 10
        btnLoyalty.layer.borderColor = UIColor.init(red: 182.0/255.0, green: 182.0/255.0, blue: 182.0/255.0, alpha: 1.0).cgColor
        btnLoyalty.layer.borderWidth = 1
        
        btnTransaction.layer.cornerRadius = 10
        btnTransaction.layer.borderColor = UIColor.init(red: 182.0/255.0, green: 182.0/255.0, blue: 182.0/255.0, alpha: 1.0).cgColor
        btnTransaction.layer.borderWidth = 1
        
        imgTxtBG.layer.cornerRadius = 10
        imgTxtBG.layer.borderColor = UIColor.init(red: 182.0/255.0, green: 182.0/255.0, blue: 182.0/255.0, alpha: 1.0).cgColor
        imgTxtBG.layer.borderWidth = 1
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK:- Button TouchUp
    @IBAction func btnBackAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
