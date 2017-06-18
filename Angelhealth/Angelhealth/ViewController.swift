//
//  ViewController.swift
//  Angelhealth
//
//  Created by Alientyc on 17/6/17.
//  Copyright © 2017 On9 Commerce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let logo = UIImage(named: "doctoFasterLo.png")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

