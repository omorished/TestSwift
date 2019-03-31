//
//  ViewController.swift
//  SPMFS


import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Delegates
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        
        //Specify Textfield Design:-
        
        //(1) Design username textfield
        usernameTextField.layer.cornerRadius = 15.0
        usernameTextField.layer.borderWidth = 0.2
        usernameTextField.layer.borderColor = UIColor.black.cgColor
        
        //(2) Design password textfield
        passwordTextField.layer.cornerRadius = 15.0
        passwordTextField.layer.borderWidth = 0.2
        passwordTextField.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func tapGuestureClicked(_ sender: UITapGestureRecognizer) {
        
        usernameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        
    }
    
    @IBAction func loginPressedBtn(_ sender: UIButton) {
        
        if usernameTextField.text == "" {
            errorLabel.text  = "Enter username"
            
        }
        else if passwordTextField.text == "" {
            errorLabel.text = "Enter Password"
        }
        else if usernameTextField.text == "Osamah@gmail.com" && passwordTextField.text == "123456" {
            
            //perform segue
            performSegue(withIdentifier: "goToSearchForPatient", sender: self)
        }
        else {
            errorLabel.text = "username or password incorrect!"
            passwordTextField.text = ""
        }
    }
    
    
    


}

