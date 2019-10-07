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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.lbTest.text = "HUAHAHAHAHA ya gitu deh ini custom view ya, hehehe lagi test iseng aja"
    }
}

