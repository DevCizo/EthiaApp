//
//  ShopDetailVC.swift
//  Ethia
//
//  Created by Sandeep on 02/01/18.
//  Copyright © 2018 Sandeep. All rights reserved.
//

import UIKit

class ShopDetailVC: UIViewController {

    //MARK:- Outlet Declaration
    @IBOutlet var btnPromotions: UIButton!
    @IBOutlet var btnTransaction: UIButton!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnPromotions.layer.cornerRadius = 10
        btnPromotions.layer.borderColor = UIColor.init(red: 182.0/255.0, green: 182.0/255.0, blue: 182.0/255.0, alpha: 1.0).cgColor
        btnPromotions.layer.borderWidth = 1
        
        btnTransaction.layer.cornerRadius = 10
        btnTransaction.layer.borderColor = UIColor.init(red: 182.0/255.0, green: 182.0/255.0, blue: 182.0/255.0, alpha: 1.0).cgColor
        btnTransaction.layer.borderWidth = 1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK:- Button TouchUp
    @IBAction func btnBackAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
