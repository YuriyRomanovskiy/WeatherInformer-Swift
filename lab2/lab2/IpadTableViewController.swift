//
//  IpadTableViewController.swift
//  lab2
//
//  Created by Yuriy Romanovskiy on 18.03.18.
//  Copyright © 2018 Yuriy Romanovskiy. All rights reserved.
//

import UIKit

class IpadTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var itemList = ["brest","mogilev"]
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return list.count
        return itemList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customIpadCell") as! IpadTableViewCell
        
        //cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        cell.NameLbl.text = itemList[indexPath.row]
        //cell.ItemImage.image = UIImage(named: (itemList?.item[indexPath.row]?.image1)!)
        //cell.ItemImage.layer.cornerRadius = cell.ItemImage.frame.height / 2
        //cell.DescriptionLbl.text = itemList?.item[indexPath.row]?.desc1
        //cell.DescriptionLbl2.text = itemList?.item[indexPath.row]?.desc2
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
    
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        
        super.viewDidLoad()
        
        
    }

}
