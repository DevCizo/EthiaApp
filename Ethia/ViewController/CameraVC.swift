//
//  CameraVC.swift
//  Ethia
//
//  Created by Sandeep on 31/12/17.
//  Copyright © 2017 Sandeep. All rights reserved.
//

import UIKit

class CameraVC: UIViewController {
    
    //MARK:- Outlet Declaration
    @IBOutlet var imgCapture1: UIImageView!
    @IBOutlet var imgCapture2: UIImageView!
    
    @IBOutlet var btnUser: UIButton!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgCapture1.layer.cornerRadius = 50
        imgCapture2.layer.cornerRadius = 40
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
