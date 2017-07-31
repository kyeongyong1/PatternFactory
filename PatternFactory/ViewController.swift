//
//  ViewController.swift
//  PatternFactory
//
//  Created by Lee on 2017. 7. 31..
//  Copyright © 2017년 LEE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nyStore: PizzaStore = NYPizzaStore()
        let chicagoStore: PizzaStore = ChicagoPizzaStore()
        
        let pizza1 = nyStore.orderPizza(type: "cheese")
        print(pizza1.name)
        
        let pizza2 = chicagoStore.orderPizza(type: "cheese")
        print(pizza2.name)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

