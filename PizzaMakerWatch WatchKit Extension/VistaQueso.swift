//
//  VistaQueso.swift
//  PizzaMakerWatch
//
//  Created by Oscar Manzaneque on 02/10/16.
//  Copyright © 2016 Prueba. All rights reserved.
//

import WatchKit
import Foundation


class VistaQueso: WKInterfaceController {

    var tamaño = ""
    var masa = ""
    var queso = "Chedar"
    
    let tipoQueso = ["Mozzarella","Chedar","Parmesano","Sin queso"]
    
    @IBOutlet var QuesoPicker: WKInterfacePicker!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let p = context as! Pizza
        tamaño = p.tamaño
        masa = p.masa     
        // Configure interface objects here.
        let item1 = WKPickerItem()
        item1.title = "Mozzarella"
        let item2 = WKPickerItem()
        item2.title = "Chedar"
        let item3 = WKPickerItem()
        item3.title = "Parmesano"
        let item4 = WKPickerItem()
        item4.title = "Sin queso"
        
        let items = [item1, item2, item3, item4]
        
        QuesoPicker.setItems(items)
        QuesoPicker.setSelectedItemIndex(1)
        
    }
    @IBAction func SeleccionarQueso(value: Int) {
        queso = tipoQueso[value]
    }

    @IBAction func SeleccionarIngredientes() {
        let pizza = Pizza  (t: tamaño, m: masa, q: queso, i: "")
        pushControllerWithName("idIngredientes", context: pizza)
        
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
