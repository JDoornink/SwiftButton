//
//  ViewController.swift
//  TestXIB4
//
//  Created by JD on 5/26/20.
//  Copyright © 2020 JD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testView: TestView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        testView.TestLabelText.text = "TestLabel text Set in ViewController"
        testView.isUserInteractionEnabled=true
        testView.TestButton.isUserInteractionEnabled = true
        
        testView.TestButton.setTitle( "Button text Set in ViewController" , for: .normal )

    }


}

