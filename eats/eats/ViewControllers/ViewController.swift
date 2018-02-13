//
//  ViewController.swift
//  eats
//
//  Created by Deyvis Ferreira on 13/02/2018.
//  Copyright © 2018 Deyvis Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var notaField: UITextField!
    
    @IBAction func add() {
        let name = nameField.text
        let nota = notaField.text
        print("comi \(String(describing: name)) e estou \(String(describing: nota)) satisfeito!")
    }

}

