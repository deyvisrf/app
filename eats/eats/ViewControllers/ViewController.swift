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
        // check are field null
        if nameField == nil || notaField == nil {
            return
        }
        
        let name = nameField!.text!
        
        // check if filed have a content
        if let nota = Int(notaField!.text!) {
        
        // array of meal
        let meal = Meal(name: name, nota: nota)
        print("comi \(meal.name) e estou \(meal.nota) satisfeito!")
        
        }
    }

}
