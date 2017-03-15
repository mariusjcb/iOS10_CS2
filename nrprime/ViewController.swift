//
//  ViewController.swift
//  nrprime
//
//  Created by Marius Ilie on 08/03/17.
//  Copyright © 2017 Marius Ilie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var calculatorBrain = VerificarePrim()
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func onTap(_ sender: UIButton) {
        if let n = textField.text {
            calculatorBrain.value = Int(n)
            updateUI()
        }
    }
    
    func updateUI() {
        if calculatorBrain.status != nil {
            if calculatorBrain.status == true {
                statusLabel.text = "Prim"
            }
            else {
                statusLabel.text = "Neprim"
            }
            
        }
        else {
            statusLabel.text = "Nu este numar"
        }
    }
}

