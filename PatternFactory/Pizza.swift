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
    var dough: Dough?
    var cheese: Cheese?
    var toppings = [String]()
    
    func prepare() {
        assert(false, "This prepare method must be implemented")
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
    
    var ingredientFactory: PizzaIngredientFactory?
    
    init(ingredientFactory: PizzaIngredientFactory) {
        super.init()
        self.ingredientFactory = ingredientFactory
        name = "Ny Style Sauce and Cheese Pizza"
        toppings.append("Grated Reggiano Cheese")
    }
    
    override func prepare() {
        print("Preparing", name)
        dough = ingredientFactory?.createDough()
        guard let nyDough = dough else { print("preparing nyDough error"); return }
        print("preparing dough :", nyDough)
        cheese = ingredientFactory?.createCheese()
        guard let nyCheese = cheese else { print("preparing nyCheese error"); return }
        print("preparing cheese :", nyCheese)
    }
    
}

class ChicagoStyleCheesePizza: Pizza {
    
    var ingredientFactory: PizzaIngredientFactory?
    
    init(ingredientFactory: PizzaIngredientFactory) {
        super.init()
        self.ingredientFactory = ingredientFactory
        name = "Chicago Style Sauce and Cheese Pizza"
        toppings.append("Shredded Mozzarella Cheese")
    }
    
    override func prepare() {
        print("Preparing", name)
        dough = ingredientFactory?.createDough()
        guard let ccDough = dough else { print("preparing ccDough error"); return }
        print("preparing dough :", ccDough)
        cheese = ingredientFactory?.createCheese()
        guard let ccCheese = cheese else { print("preparing ccCheese error"); return }
        print("preparing cheese :", ccCheese)
    }
    
    override func cut() {
        print("Cutting the pizza into square slices")
    }
}
