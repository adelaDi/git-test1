//
//  detailsVC.swift
//  simpson3
//
//  Created by adela on 2018/3/17.
//  Copyright © 2018年 adela. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var occupationlabel: UILabel!
    
    
    var selectedSimpson = Simpson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namelabel.text = selectedSimpson.name
        occupationlabel.text = selectedSimpson.occupation
        imageview.image = selectedSimpson.image
        
        
    }

}
