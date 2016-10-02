//
//  InterfaceController.swift
//  PizzaMakerWatch WatchKit Extension
//
//  Created by Oscar Manzaneque on 02/10/16.
//  Copyright © 2016 Prueba. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var TamañoPicker: WKInterfacePicker!
    
    var tamañoActual = "Mediana"
   
    let tamaños = ["Chica","Mediana","Grande"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let item1 = WKPickerItem()
        item1.title = "Chica"
        
        let item2 = WKPickerItem()
        item2.title = "Mediana"
        
        let item3 = WKPickerItem()
        item3.title = "Grande"
        
        let items = [item1, item2, item3]
        
        TamañoPicker.setItems(items)
        TamañoPicker.setSelectedItemIndex(1)
    }

    @IBAction func CambiarTamaño(value: Int) {
        tamañoActual = tamaños[value]
    }
    @IBAction func SeleccionarMasa() {
        let pizza = Pizza(t: tamañoActual, m: "", q: "", i: "")
        pushControllerWithName("idMasa", context: pizza)
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
