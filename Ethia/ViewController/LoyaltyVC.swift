//
//  LoyaltyVC.swift
//  Ethia
//
//  Created by Sandeep on 03/01/18.
//  Copyright © 2018 Sandeep. All rights reserved.
//

import UIKit

class LoyaltyVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //MARK:- Outlet Declaration
    @IBOutlet var tblLoyaltyList: UITableView!
    
    //MARK: Other
    var arrLoayalty = NSMutableArray()
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        for _ in 0 ..< 4 {
            var dict = NSMutableDictionary()
            dict.setValue("Ethera", forKey: "title")
            dict.setValue("35", forKey: "count")
            dict.setValue("A", forKey: "key")
            arrLoayalty.add(dict)
            
            dict = NSMutableDictionary()
            dict.setValue("Freshkon", forKey: "title")
            dict.setValue("5", forKey: "count")
        dict.setValue("B", forKey: "key")
            arrLoayalty.add(dict)
            
            dict = NSMutableDictionary()
            dict.setValue("Smartvision", forKey: "title")
            dict.setValue("20", forKey: "count")
        dict.setValue("C", forKey: "key")
            arrLoayalty.add(dict)
//        }
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
        return arrLoayalty.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PromotionsTableCell = tblLoyaltyList.dequeueReusableCell(withIdentifier: "PromotionsTableCell", for: indexPath) as! PromotionsTableCell
        
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        if indexPath.row % 2 == 0 {
            cell.imgProduct.image = UIImage.init(named: "bausch")
        }else{
            cell.imgProduct.image = UIImage.init(named: "freshlook")
        }
        
        cell.lblTitle.text = (arrLoayalty.object(at: indexPath.row) as! NSDictionary).value(forKey: "title") as? String
        cell.lblCount.text = (arrLoayalty.object(at: indexPath.row) as! NSDictionary).value(forKey: "count") as? String
        cell.lblKey.text = (arrLoayalty.object(at: indexPath.row) as! NSDictionary).value(forKey: "key") as? String
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "loyaltyDetailSegue", sender: nil)
    }
}
