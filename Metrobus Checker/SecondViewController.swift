//
//  SecondViewController.swift
//  Metrobus Checker
//
//  Created by Simon Chervenak on 12/8/17.
//  Copyright © 2017 Innoviox. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    //MARK: Properties
    @IBOutlet weak var busStopName: UITextField!
    @IBOutlet weak var busStopLabel: UILabel!
    @IBOutlet weak var randomButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func button(_ sender: UIButton) {
        busStopLabel.text = "Clicked!"
    }
}

