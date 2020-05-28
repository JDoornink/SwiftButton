//
//  TestView.swift
//  TestXIB4
//
//  Created by JD on 5/26/20.
//  Copyright © 2020 JD. All rights reserved.
//

import UIKit

class TestView: UIView {

    @IBOutlet var testView: UIView!
    @IBOutlet weak var TestLabelText: UILabel!
    @IBOutlet weak var TestButton: UIButton!
    override init(frame: CGRect) { // for using CustomView in code
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder ) { // for using CustomView in IB
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        //we're going to do stuff here
        Bundle.main.loadNibNamed("TestView", owner:self, options:nil)
        addSubview(testView)
        TestButton.isUserInteractionEnabled = true
        //contentView.frame = self.bounds
        //contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

    @IBAction func toucheUpInsideAction(_ sender: Any) {
        print("Clicked")
    }
}
