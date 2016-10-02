//
//  VistaMasa.swift
//  PizzaMakerWatch
//
//  Created by Oscar Manzaneque on 02/10/16.
//  Copyright © 2016 Prueba. All rights reserved.
//

import WatchKit
import Foundation


class VistaMasa: WKInterfaceController {

    var tamaño = ""
    var masa = "crujiente"
    
    let tipoMasa = ["delgada", "crujiente", "gruesa"]
    
    @IBOutlet var MasaPicker: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! Pizza
        tamaño = c.tamaño
        
        // Configure interface objects here.
        let item1 = WKPickerItem()
        item1.title = "delgada"
        
        let item2 = WKPickerItem()
        item2.title = "crujiente"
        
        let item3 = WKPickerItem()
        item3.title = "gruesa"
        
        let items = [item1, item2, item3]
        
        MasaPicker.setItems(items)
        MasaPicker.setSelectedItemIndex(1)
        
    }
    
    @IBAction func seleccionarMasa(value: Int) {
        masa = tipoMasa[value]
    }

    @IBAction func SeleccionarQueso() {
        let pizza = Pizza(t: tamaño, m: masa, q: "", i: "")
         pushControllerWithName("idQueso", context: pizza)
        
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
