//
//  submitViewController.swift
//  Angelhealth
//
//  Created by Alientyc on 18/6/17.
//  Copyright © 2017 On9 Commerce. All rights reserved.
//

import UIKit
import IHKeyboardAvoiding


class submitViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        IHKeyboardAvoiding.KeyboardAvoiding.avoidingView = self.view
        //KeyboardAvoiding.avoidingView = self.avoidingView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear()
//       
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
