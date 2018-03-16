//
//  LoyaltyDetailVC.swift
//  Ethia
//
//  Created by Sandeep on 02/01/18.
//  Copyright © 2018 Sandeep. All rights reserved.
//

import UIKit

class LoyaltyDetailVC: UIViewController {

    //MARK:- Outlet Declaration
    @IBOutlet var imgPointBG: UIImageView!
    @IBOutlet var imgCodeBorder: UIImageView!
    @IBOutlet var imgPromotionsBorder: UIImageView!
    
    @IBOutlet var btnOK: UIButton!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgPointBG.layer.cornerRadius = 40
        imgPointBG.layer.borderWidth = 1
        imgPointBG.layer.borderColor = UIColor.lightGray.cgColor
        
        imgCodeBorder.layer.cornerRadius = 3
        imgCodeBorder.layer.borderWidth = 1
        imgCodeBorder.layer.borderColor = UIColor.lightGray.cgColor
        
        imgPromotionsBorder.layer.cornerRadius = 3
        imgPromotionsBorder.layer.borderWidth = 1
        imgPromotionsBorder.layer.borderColor = UIColor.lightGray.cgColor
        
        btnOK.layer.cornerRadius = 5
        btnOK.layer.borderWidth = 1
        btnOK.layer.borderColor = UIColor.black.cgColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK:- Button TouchUp
    @IBAction func btnBackAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
