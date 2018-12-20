//
//  LoginViewController.swift
//  Lugi's Pizza Pop
//
//  Created by Jose Luis Romero on 12/17/18.
//  Copyright © 2018 Jose Luis Romero. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBAction func loginButton(_ sender: Any) {
   //comparing == assgining =
        if usernameText.text ?? "" == username && passwordText.text ?? "" == password{
            performSegue(withIdentifier: "loginSegue", sender: nil)
        }
        else {
            showAlert(title: "Login Error", message: "Incorrect Credentials Entered")
        }
    }
    
    @IBOutlet weak var usernameText: UITextField!
    // code specific requirements for username ex: at least 8 characters
    @IBOutlet weak var passwordText: UITextField!
    // code specific requirements for password here ex: 1 non letter character, 1 uppercase & one number
    private let username = "johndoe"
    private let password = "xcoderules1"
    //default setting for the sake of moving to the next screen 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func showAlert(title: String, message: String){
        // create pop up
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        
        // create ok Button
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        // add okButton to Alert Pop Up
        alertController.addAction(okButton)
        
        // show popup
        present(alertController, animated: true, completion: nil)
    }
}

