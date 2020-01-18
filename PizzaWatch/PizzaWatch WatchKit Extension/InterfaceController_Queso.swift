//
//  InterfaceController_Queso.swift
//  PizzaWatch WatchKit Extension
//
//  Created by Ivan Rulik on 1/15/20.
//  Copyright © 2020 Ivan Rulik. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController_Queso: WKInterfaceController {
    @IBOutlet weak var pickerView: WKInterfacePicker!
    @IBAction func pickerSelectedItemChange(_ value: Int) {
        orden.queso = quesos[value]
    }
    let quesos=["","Mozarella","Cheddar","Parmesano","Sin queso"]
    var selectQues=""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let pickerItems:[WKPickerItem] = quesos.map{
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
