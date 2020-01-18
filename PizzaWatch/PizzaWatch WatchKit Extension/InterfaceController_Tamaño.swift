//
//  InterfaceController_Tamaño.swift
//  PizzaWatch WatchKit Extension
//
//  Created by Ivan Rulik on 1/15/20.
//  Copyright © 2020 Ivan Rulik. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController_Taman_o: WKInterfaceController {
    @IBOutlet weak var pickerView: WKInterfacePicker!
    
    @IBAction func pickerSelectedItemChanged(_ value: Int) {
        orden.tamaño = tamaños[value]
    }
    
    let tamaños=["","Chica","Mediana","Grande"]
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let pickerItems:[WKPickerItem] = tamaños.map{
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            return pickerItem
        }
        pickerView.setItems(pickerItems)
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
