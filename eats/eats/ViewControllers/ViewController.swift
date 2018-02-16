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
    var delegate: ViewControllerDelegate?
    
    @IBAction func add() {
        
        // check if is nil, empty and value is int
        guard let nota = Int(notaField!.text!), let name = nameField.text, name != "" else {
            return
        }
        
        // array of meal
        let meal = Meal(name: name, nota: nota)
        print("comi \(meal.name) e estou \(meal.nota) satisfeito!")
        
        // get function for add when click on button
        delegate!.add(meal)
        
        // remove screen duplicate
        navigationController?.popViewController(animated: true)
    }
}
