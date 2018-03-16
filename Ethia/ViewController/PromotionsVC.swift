//
//  PromotionsVC.swift
//  Ethia
//
//  Created by Sandeep on 02/01/18.
//  Copyright © 2018 Sandeep. All rights reserved.
//

import UIKit

class PromotionsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //MARK:- Outlet Declaration
    @IBOutlet var tblPromotionsList: UITableView!
    
    //MARK: Other
    var arrPromotionList = NSMutableArray()
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var dict = NSMutableDictionary()
        dict.setValue("Ethera", forKey: "title")
        dict.setValue("35", forKey: "count")
        dict.setValue("A", forKey: "key")
        arrPromotionList.add(dict)
        
        dict = NSMutableDictionary()
        dict.setValue("Freshkon", forKey: "title")
        dict.setValue("5", forKey: "count")
        dict.setValue("B", forKey: "key")
        arrPromotionList.add(dict)
        
        dict = NSMutableDictionary()
        dict.setValue("Smartvision", forKey: "title")
        dict.setValue("20", forKey: "count")
        dict.setValue("C", forKey: "key")
        arrPromotionList.add(dict)
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
        return arrPromotionList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PromotionsTableCell = tblPromotionsList.dequeueReusableCell(withIdentifier: "PromotionsTableCell", for: indexPath) as! PromotionsTableCell
        
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        cell.lblTitle.text = arrPromotionList.object(at: indexPath.row) as? String
        if indexPath.row % 2 == 0 {
            cell.imgProduct.image = UIImage.init(named: "bausch")
        }else{
            cell.imgProduct.image = UIImage.init(named: "freshlook")
        }
        cell.lblKey.text = (arrPromotionList.object(at: indexPath.row) as!   NSDictionary).value(forKey: "key") as? String
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "subPromotionListSegue", sender: nil)
    }
}

class PromotionsTableCell: UITableViewCell {
    
    @IBOutlet var imgBorder: UIImageView!
    @IBOutlet var imgProduct: UIImageView!
    
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var lblCount: UILabel!
    @IBOutlet var lblKey: UILabel!
    
    override func awakeFromNib() {
        
        imgBorder.layer.cornerRadius = 0
        imgBorder.layer.borderWidth = 1
        imgBorder.layer.borderColor = UIColor.lightGray.cgColor
    }
}
