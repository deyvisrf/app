//
//  ViewController.swift
//  eats
//
//  Created by Deyvis Ferreira on 13/02/2018.
//  Copyright © 2018 Deyvis Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameField: UITextField?
    @IBOutlet var notaField: UITextField?
    
    @IBAction func add() {
    
        if nameField == nil || notaField == nil {
            return
        }
        
        let name = nameField!.text!
        
        if let nota = Int(notaField!.text!) {
        
        let meal = Meal(name: name, nota: nota)
        print("comi \(meal.name) e estou \(meal.nota) satisfeito!")
        
        }
    }

}
