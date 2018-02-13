//
//  Meal.swift
//  eats
//
//  Created by Deyvis Ferreira on 13/02/2018.
//  Copyright © 2018 Deyvis Ferreira. All rights reserved.
//

import Foundation

class Meal {
    let name: String
    let nota: Int
    let items = Array<Item> ()
    
    init(name: String, nota: Int) {
        self.name = name
        self.nota = nota
    }
    
    func allCalories() -> Double {
        var total = 0.0
        for item in items {
            total += item.calories
        }
        return total
    }
}
