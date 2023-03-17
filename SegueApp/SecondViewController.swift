//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Onur Bulut on 17.03.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    var name = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text=name
    }
    

 

}
