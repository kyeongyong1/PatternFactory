//
//  Pizza.swift
//  PatternFactory
//
//  Created by Lee on 2017. 7. 31..
//  Copyright © 2017년 LEE. All rights reserved.
//

import Foundation

class Pizza {
    
    var name: String = ""
    var dough: String = ""
    var sauce: String = ""
    var toppings = [String]()
    
    func prepare() {
        print("prepare")
    }
    
    func bake() {
        print("bake")
    }
    
    func cut() {
        print("cut")
    }
    
    func box() {
        print("box")
    }
    
}

class NYStyleCheesePizza: Pizza {
    override init() {
        super.init()
        name = "Ny Style Sauce and Cheese Pizza"
        dough = "Thin Crust Dough"
        sauce = "Marinara Sauce"
        
        toppings.append("Grated Reggiano Cheese")
    }
}

class NYStyleVeggiePizza: Pizza {
    
}

class NYStyleClamPizza: Pizza {
    
}

class NYStylePepperoniPizza: Pizza {
    
}

class ChicagoStyleCheesePizza: Pizza {
    override init() {
        super.init()
        name = "Chicago Style Deep Dish Cheese Pizza"
        dough = "Extra Thick Crust Dough"
        sauce = "Plum Tomato Sauce"
        
        toppings.append("Shredded Mozzarella Cheese")
    }
    
    override func cut() {
        print("Cutting the pizza into square slices")
    }

}

class ChicagoStyleVeggiePizza: Pizza {
    
}

class ChicagoStyleClamPizza: Pizza {
    
}

class ChicagoStylePepperoniPizza: Pizza {
    
}
