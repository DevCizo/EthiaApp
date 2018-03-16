//
//  SubPromotionListVC.swift
//  Ethia
//
//  Created by Sandeep on 03/01/18.
//  Copyright © 2018 Sandeep. All rights reserved.
//

import UIKit

class SubPromotionListVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //MARK:- Outlet Declaration
    @IBOutlet var tblSubPromotionList: UITableView!
    
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
    
    //MARK:- UITableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SubPromotionsTableCell = tblSubPromotionList.dequeueReusableCell(withIdentifier: "SubPromotionsTableCell", for: indexPath) as! SubPromotionsTableCell
        
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        cell.btnScan.layer.cornerRadius = 4
        cell.btnScan.layer.borderColor = UIColor.darkGray.cgColor
        cell.btnScan.layer.borderWidth = 1
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "promotionDetailSegue", sender: nil)
    }
}

class SubPromotionsTableCell: UITableViewCell {
    
    @IBOutlet var imgBorder: UIImageView!
    @IBOutlet var btnScan: UIButton!
    
    override func awakeFromNib() {
        
//        imgBorder.layer.cornerRadius = 3
//        imgBorder.layer.borderWidth = 1
//        imgBorder.layer.borderColor = UIColor.black.cgColor
    }
}
