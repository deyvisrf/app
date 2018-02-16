//
//  MealsTableViewController.swift
//  eats
//
//  Created by Deyvis Ferreira on 15/02/2018.
//  Copyright © 2018 Deyvis Ferreira. All rights reserved.
//

import UIKit

class MealsTableViewController: UITableViewController {
    
    var meals = [Meal(name: "Lazanha", nota: 10),
                 Meal(name: "Sushi", nota: 7)]
    
    // add in array
    func add(meal: Meal) {
        meals.append(meal)
        tableView.reloadData()
    }
    
    // reference a view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let view = segue.destination as! ViewController
        view.mealsTable = self
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
