//
//  TransactionsVC.swift
//  Ethia
//
//  Created by Sandeep on 31/12/17.
//  Copyright © 2017 Sandeep. All rights reserved.
//

import UIKit

class TransactionsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //MARK:- Outlet Declaration
    @IBOutlet var viewShop: UIView!
    @IBOutlet var viewBrand: UIView!
    @IBOutlet var viewMonth: UIView!
    
    @IBOutlet var tblTransactionList: UITableView!
    
    //MARK: Other
    var arrTransactionList = NSMutableArray()
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        viewShop.layer.cornerRadius = 3
//        viewShop.layer.borderColor = UIColor.black.cgColor
//        viewShop.layer.borderWidth = 1
//        viewBrand.layer.cornerRadius = 3
//        viewBrand.layer.borderColor = UIColor.black.cgColor
//        viewBrand.layer.borderWidth = 1
//        viewMonth.layer.cornerRadius = 3
//        viewMonth.layer.borderColor = UIColor.black.cgColor
//        viewMonth.layer.borderWidth = 1
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
        let cell: TransactionTableView = tblTransactionList.dequeueReusableCell(withIdentifier: "TransactionTableView", for: indexPath) as! TransactionTableView
        
        return cell
    }
}

class TransactionTableView: UITableViewCell {
    
    @IBOutlet var lblTitle: UILabel!
}
