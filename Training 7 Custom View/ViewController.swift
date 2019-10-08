//
//  ViewController.swift
//  Training 7 Custom View
//
//  Created by yudha on 07/10/19.
//  Copyright © 2019 yudha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customView: TestView!
    @IBOutlet weak var tblContent: UITableView!
    
    var usersArray : Array = [["first_name": "michael", "last_name": "jackson"], ["first_name" : "bill", "last_name" : "gates"], ["first_name" : "steve", "last_name" : "jobs"], ["first_name" : "mark", "last_name" : "zuckerberg"], ["first_name" : "anthony", "last_name" : "quinn"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.lbTest.text = "HUAHAHAHAHA ya gitu deh ini custom view ya, hehehe lagi test iseng aja, buat reuseable view"
        
        tblContent.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
        tblContent.register(UINib(nibName: "DynamicTableViewCell", bundle: nil), forCellReuseIdentifier: "DynamicTableViewCell")
        tblContent.delegate = self
        tblContent.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersArray.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DynamicTableViewCell", for: indexPath) as! DynamicTableViewCell
            cell.lblHeader.text = "HEHEHEHE"
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
            let dict = usersArray[indexPath.row - 1 ]
            
            cell.lblTitle.text = dict["first_name"]
            cell.lblDescription.text = dict["last_name"]
            
            return cell
        }
    }
}

