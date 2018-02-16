//
//  MealsTableViewController.swift
//  eats
//
//  Created by Deyvis Ferreira on 15/02/2018.
//  Copyright © 2018 Deyvis Ferreira. All rights reserved.
//

import UIKit

class MealsTableViewController: UITableViewController, addAMealDelegate {
    
    var meals = Array<Meal> ()
    
    // add in array
    func add(_ meal: Meal) {
        meals.append(meal)
        tableView.reloadData()
    }
    
    // reference a view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // check identifier the segue of next screen
        if (segue.identifier == "addMeal") {
            let view = segue.destination as! ViewController
            view.delegate = self
        }
    }
    
    // numbers of row
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    // content of row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let meal = meals[row]
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: nil)
        cell.textLabel!.text = meal.name
        
        return cell
    }
}
