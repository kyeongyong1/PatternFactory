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
        if type == "cheese" {
            return NYStyleCheesePizza()
        } else if type == "veggie" {
            return NYStyleVeggiePizza()
        } else if type == "clam" {
            return NYStyleClamPizza()
        } else if type == "pepperoni" {
            return NYStylePepperoniPizza()
        } else {
            return Pizza()
        }
        
    }
    
}

class ChicagoPizzaStore: PizzaStore {
    override func createPizza(type: String) -> Pizza {
        if type == "cheese" {
            return ChicagoStyleCheesePizza()
        } else if type == "veggie" {
            return ChicagoStyleVeggiePizza()
        } else if type == "clam" {
            return ChicagoStyleClamPizza()
        } else if type == "pepperoni" {
            return ChicagoStylePepperoniPizza()
        } else {
            return Pizza()
        }
        
    }
    
}
