//
//  PatientInfoViewController.swift
//  SPMFS
//
//  Created by Os! on 23/02/2019.
//  Copyright © 2019 Os!. All rights reserved.
//

import UIKit

class PatientInfoViewController: UIViewController {
    
    var btnClicked = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func permanentDiseases(_ sender: UIButton) {
        
        btnClicked = "permanentDiseases"
        
        performSegue(withIdentifier: "goToOneOfThree", sender: self)
    }
    
    @IBAction func antibiotics(_ sender: UIButton) {
        
        btnClicked = "antibiotics"
        
        performSegue(withIdentifier: "goToOneOfThree", sender: self)
    }
    
    @IBAction func criticalNotes(_ sender: UIButton) {
        
        btnClicked = "criticalNotes"
        
        performSegue(withIdentifier: "goToOneOfThree", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let VC = segue.destination as! PD_A_CNTableTableViewController
        
        VC.optionName = btnClicked
    }
    
    
    

   


}
