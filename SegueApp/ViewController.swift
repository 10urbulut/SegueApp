//
//  ViewController.swift
//  SegueApp
//
//  Created by Onur Bulut on 17.03.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameText: UITextField!
    var userName =  ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
         
            print("viewDidDisappear")
        }
        
    
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
        nameText.text = ""
    }
    
    
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }

    @IBAction func nextClicked(_ sender: Any) {
         userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
        
    }
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as? SecondViewController
            destinationVC?.name = userName
        }
    }
    
}

