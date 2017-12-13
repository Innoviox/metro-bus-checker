//
//  ItemViewController.swift
//  Metrobus Checker
//
//  Created by Simon Chervenak on 12/8/17.
//  Copyright © 2017 Innoviox. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var `switch`: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    @IBAction func switcher(_ sender: UISwitch) {
        print(sender.isOn);
    }
}


