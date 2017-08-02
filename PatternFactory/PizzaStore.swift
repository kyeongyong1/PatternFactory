//
//  PizzaStore.swift
//  PatternFactory
//
//  Created by Lee on 2017. 7. 31..
//  Copyright © 2017년 LEE. All rights reserved.
//

import Foundation

class PizzaStore {
    
    func orderPizza(type: String) -> Pizza {
        let pizza = createPizza(type: type)
        
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.bake()
        
        return pizza
    }
    
    func createPizza(type: String) -> Pizza {
        assert(false, "This createPizza method must be implemented")
        return Pizza()
    }

}

class NYPizzaStore: PizzaStore {
    override func createPizza(type: String) -> Pizza {
        
        var pizza: Pizza?
        let ingredientFactory = NYPizzaIngredientFactory()
        
        if type == "cheese" {
            pizza = NYStyleCheesePizza(ingredientFactory: ingredientFactory)
            guard let cheesePizza = pizza else { return Pizza() }
            return cheesePizza
        } else {
            return Pizza()
        }
    }
}

class ChicagoPizzaStore: PizzaStore {
    override func createPizza(type: String) -> Pizza {
        
        var pizza: Pizza?
        let ingredientFactory = ChicagoIngredientFactory()
        
        if type == "cheese" {
            pizza = ChicagoStyleCheesePizza(ingredientFactory: ingredientFactory)
            guard let cheesePizza = pizza else { return Pizza() }
            return cheesePizza
        } else {
            return Pizza()
        }
    }
}
