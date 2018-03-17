//
//  ViewController.swift
//  simpson3
//
//  Created by adela on 2018/3/17.
//  Copyright © 2018年 adela. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
 
    
    var mysimpson = [Simpson]()
    var chosenSimpson = Simpson()
   


    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        
        
        //tableView setup
        
        tableview.dataSource=self
        tableview.delegate=self
       
        //create our characters
        let simpson1 = Simpson()
        simpson1.name = "Homer Simpson"
        simpson1.occupation = "Safety Inspector"
        simpson1.image = UIImage(named: "simpson1.png")!
        
        let simpson2 = Simpson()
        simpson2.name = "Bart Simpson"
        simpson2.occupation = "Student"
        simpson2.image = UIImage(named: "simpson2.png")!
        
        let simpson3 = Simpson()
        simpson3.name = "Marge Simpson"
        simpson3.occupation = "Homermaker"
        simpson3.image = UIImage(named: "simpson3.png")!
        
        let simpson4 = Simpson()
        simpson4.name = "Ned Flanders"
        simpson4.occupation = "Pharmacist"
        simpson4.image = UIImage(named: "simpson4.png")!
        
        mysimpson.append(simpson1)
        mysimpson.append(simpson2)
        mysimpson.append(simpson3)
        mysimpson.append(simpson4)
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mysimpson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mysimpson[indexPath.row].name
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotodetails" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = self.chosenSimpson
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.chosenSimpson = mysimpson[indexPath.row]
        self.performSegue(withIdentifier: "gotodetails", sender: nil)
        
    }


}

