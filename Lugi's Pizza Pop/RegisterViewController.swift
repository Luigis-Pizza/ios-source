//
//  ViewController.swift
//  Lugi's Pizza Pop
//
//  Created by Jose Luis Romero on 12/17/18.
//  Copyright © 2018 Jose Luis Romero. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfLastName: UITextField!
    @IBOutlet weak var tfUserName: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var bCreate: UIButton!
    @IBOutlet weak var bCancer: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func bCreateAction(_ sender: Any) {
        var massage : String = ""
        if (tfName.text == "") {
            massage = " Name text Field is empty!\n"
        }
        if (tfLastName.text == "") {
            massage += " Last Name text Field is empty!\n"
        }
        if (tfUserName.text == "") {
            massage += " User Name text Field is empty!\n"
        }
        if (tfPassword.text == "") {
            massage += " Password text Field is empty!\n"
        }
        let alert = UIAlertController(title: "Empty text field", message: massage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func bCancelAction(_ sender: Any) {
        
    }
}

