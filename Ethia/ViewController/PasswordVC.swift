//
//  PasswordVC.swift
//  Ethia
//
//  Created by Sandeep on 01/01/18.
//  Copyright © 2018 Sandeep. All rights reserved.
//

import UIKit

class PasswordVC: UIViewController {

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
}
