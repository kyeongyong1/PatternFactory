//
//  PizzaIngredient.swift
//  PatternFactory
//
//  Created by Lee on 2017. 8. 2..
//  Copyright © 2017년 LEE. All rights reserved.
//

import Foundation

class Dough {
    
}

class ThinCrustDough: Dough {
    
    var description: String {
        return "\(type(of: self))"
    }
}

class ThickCurstDough: Dough {
    var description: String {
        return "\(type(of: self))"
    }
}

class Cheese {
    
}

class ReggianoCheese: Cheese {
    var description: String {
        return "\(type(of: self))"
    }
}

class MozzarellaCheese: Cheese {
    var description: String {
        return "\(type(of: self))"
    }
}

protocol PizzaIngredientFactory {
    func createDough() -> Dough
    func createCheese() -> Cheese
}

class NYPizzaIngredientFactory: PizzaIngredientFactory {

    func createDough() -> Dough {
        return ThinCrustDough()
    }
    
    func createCheese() -> Cheese {
        return ReggianoCheese()
    }
}

class ChicagoIngredientFactory: PizzaIngredientFactory {
    
    func createDough() -> Dough {
        return ThickCurstDough()
    }
    
    func createCheese() -> Cheese {
        return MozzarellaCheese()
    }    
}
