//
//  TestView.swift
//  Training 7 Custom View
//
//  Created by yudha on 07/10/19.
//  Copyright © 2019 yudha. All rights reserved.
//

import UIKit

class TestView: UIView {
    
    
    @IBOutlet weak var lbTest: UILabel!
    @IBOutlet var customView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit(){
        Bundle.main.loadNibNamed("TestView", owner: self, options: nil)
        addSubview(customView)
        customView.frame = self.bounds
        customView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
//        lbTest.contentMode = .scaleToFill
//        lbTest.numberOfLines = 0
//        lbTest.leadingMargin(pixel: 10)
//        lbTest.trailingMargin(pixel: 10)
    }
}
