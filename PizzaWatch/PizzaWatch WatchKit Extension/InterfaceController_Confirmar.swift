//
//  InterfaceController_Confirmar.swift
//  PizzaWatch WatchKit Extension
//
//  Created by Ivan Rulik on 1/15/20.
//  Copyright © 2020 Ivan Rulik. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController_Confirmar: WKInterfaceController {
    @IBOutlet weak var tamañoLabel: WKInterfaceLabel!
    @IBOutlet weak var masaLabel: WKInterfaceLabel!
    @IBOutlet weak var quesoLabel: WKInterfaceLabel!

    @IBOutlet weak var i1Label: WKInterfaceLabel!
    @IBOutlet weak var i2Label: WKInterfaceLabel!
    @IBOutlet weak var i3Label: WKInterfaceLabel!
    @IBOutlet weak var i4Label: WKInterfaceLabel!
    @IBOutlet weak var i5Label: WKInterfaceLabel!
    
    @IBOutlet weak var orderButton: WKInterfaceButton!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        tamañoLabel.setText(orden.tamaño)
        masaLabel.setText(orden.masa)
        quesoLabel.setText(orden.queso)
        i1Label.setText(orden.ing1)
        i2Label.setText(orden.ing2)
        i3Label.setText(orden.ing3)
        i4Label.setText(orden.ing4)
        i5Label.setText(orden.ing5)
        
        if(orden.tamaño == "" || orden.masa == "" || orden.queso == "" || orden.ing1 == ""){
            orderButton.setEnabled(false)
        }
        else{
            orderButton.setEnabled(true)
        }
        
        
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
