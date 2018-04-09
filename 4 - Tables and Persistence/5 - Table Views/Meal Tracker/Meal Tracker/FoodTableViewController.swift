//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Cory Barton on 4/3/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals: [Meal] = [
        Meal(name: "breakfast", food: [
            Food(name:"eggs", description:"Sunny side up eggs"),
            Food(name: "bacon", description: "Thicc bacon"),
            Food(name: "bread", description: "One slice of whole-wheat bread")
            ]),
        Meal(name: "lunch", food: [
            Food(name: "Hamburger Buns", description: "Potato buns"),
            Food(name: "Meat Patty", description: "1/2 lb. meat patty."),
            Food(name: "Mayo", description: "1 Tbs of Mayonnaise."),
            Food(name: "Dills", description: "Kosher Dills")
            ]),
        Meal(name: "dinner", food: [
            Food(name: "Chicken Breast", description: "Chicken breast in strips."),
            Food(name: "Salad", description: "Leafy stuff"),
            Food(name: "Avocado", description: "Avocado paste")
            ]),
        ]

    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return meals[0].food.count
        case 1:
            return meals[1].food.count
        case 2:
            return meals[2].food.count
        default:
            return 0
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        let meal = meals[indexPath.section].food[indexPath.row]
        
        cell.textLabel?.text = meal.name
        cell.detailTextLabel?.text = meal.description
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return meals[0].name
        case 1:
            return meals[1].name
        case 2:
            return meals[2].name
        default:
            return "meal name not found"
        }
    }
    
}
