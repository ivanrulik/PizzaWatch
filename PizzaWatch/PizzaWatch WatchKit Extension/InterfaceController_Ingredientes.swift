//
//  InterfaceController_Ingredientes.swift
//  PizzaWatch WatchKit Extension
//
//  Created by Ivan Rulik on 1/15/20.
//  Copyright © 2020 Ivan Rulik. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController_Ingredientes: WKInterfaceController {
    
    
    @IBOutlet weak var i1Label: WKInterfaceLabel!
    @IBOutlet weak var i2Label: WKInterfaceLabel!
    @IBOutlet weak var i3Label: WKInterfaceLabel!
    @IBOutlet weak var i4Label: WKInterfaceLabel!
    @IBOutlet weak var i5Label: WKInterfaceLabel!
    
    @IBAction func i1Slide(_ value: Int) {
        i1Label.setText(ingredientes[value])
        orden.ing1=ingredientes[value]
    }
    @IBAction func i2Slide(_ value: Int) {
        i2Label.setText(ingredientes[value])
        orden.ing2=ingredientes[value]
    }
    @IBAction func i3Slide(_ value: Int) {
        i3Label.setText(ingredientes[value])
        orden.ing3=ingredientes[value]
    }
    @IBAction func i4Slide(_ value: Int) {
        i4Label.setText(ingredientes[value])
        orden.ing4=ingredientes[value]
    }
    @IBAction func i5Slide(_ value: Int) {
        i5Label.setText(ingredientes[value])
        orden.ing5=ingredientes[value]
    }
    let ingredientes=["","Jamon", "Pepperoni", "Pavo", "Salchicha", "Aceituna", "Cebolla", "Pimiento", "Piña", "Anchoa"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
