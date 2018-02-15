//
//  MealsTableViewController.swift
//  eats
//
//  Created by Deyvis Ferreira on 15/02/2018.
//  Copyright © 2018 Deyvis Ferreira. All rights reserved.
//

import UIKit

class MealsTableViewController: UITableViewController {
    
    let meals = [Meal(name: "Lazanha", nota: 10),
                 Meal(name: "Sushi", nota: 7)]
    
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
