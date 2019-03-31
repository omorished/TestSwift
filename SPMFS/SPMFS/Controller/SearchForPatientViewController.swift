//
//  SearchForPatientViewController.swift


import UIKit

class SearchForPatientViewController: UIViewController {
    
    @IBOutlet weak var patientIdTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func searchBtnClicked(_ sender: UIButton) {
        
        if patientIdTextField.text == "" {
            
            errorLabel.text = "Enter Patient id"
        }
        
        else if patientIdTextField.text == "123456789" {
            
            //perform segue
            performSegue(withIdentifier: "goToPatientInfo", sender: self)
        }
        
        else {
            errorLabel.text = "There is no patient with this id" 
        }
    }
    
    

}
