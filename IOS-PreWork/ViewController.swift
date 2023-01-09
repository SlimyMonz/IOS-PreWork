//
//  ViewController.swift
//  IOS-PreWork
//
//  Created by Harry Hocker on 1/9/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var petsSwitch: UISwitch!
    
    @IBOutlet weak var firstField: UITextField!
    @IBOutlet weak var lastField: UITextField!
    @IBOutlet weak var schoolField: UITextField!
    
    @IBOutlet weak var yearSegment: UISegmentedControl!
    
    @IBOutlet weak var numPetsLabel: UILabel!
    @IBOutlet weak var numPetsStepper: UIStepper!
    
    @IBOutlet weak var introduceButton: UIButton!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelf(_ sender: UIButton) {
        let year = yearSegment.titleForSegment(at: yearSegment.selectedSegmentIndex)
        let introduction = "My name is \(firstField.text!) \(lastField.text!) and I attend \(schoolField.text!). I am currently in my \(year!) year and I own \(numPetsLabel.text!) cat(s). It is \(petsSwitch.isOn) that I want more pets."
        
        print (introduction)
        
        let alertController = UIAlertController(title: "Introduction.", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Cool!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

