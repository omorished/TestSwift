//
//  PD_A_CNTableTableViewController.swift


import UIKit

class PD_A_CNTableTableViewController: UITableViewController {
    
    var optionName = ""
    
    let permanentDiseases = ["arthritis", "asthma", "cancer"]
    let antibiotics = ["Penicillins", "Macrolides"]
    let criticalNote = ["unconscious give him a juice"]
    
    var usedArray : [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch optionName {
        case "permanentDiseases":
            usedArray = permanentDiseases
        case "antibiotics":
            usedArray = antibiotics
        default:
            usedArray = criticalNote
        }
        
        
        
    

      
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return usedArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "OneOfThreeCell")
        
//        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 120
        
        
        cell?.textLabel?.text = usedArray[indexPath.row]
                
        return cell!
    }

   
}

