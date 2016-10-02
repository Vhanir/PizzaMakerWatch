//
//  vistaConfirmar.swift
//  PizzaMakerWatch
//
//  Created by Oscar Manzaneque on 02/10/16.
//  Copyright © 2016 Prueba. All rights reserved.
//

import WatchKit
import Foundation


class vistaConfirmar: WKInterfaceController {

    @IBOutlet var tamañoLabel: WKInterfaceLabel!
    @IBOutlet var masaLabel: WKInterfaceLabel!
    @IBOutlet var quesoLabel: WKInterfaceLabel!
    @IBOutlet var ingredientesLabel: WKInterfaceLabel!
    
    @IBOutlet var error: WKInterfaceLabel!
    var tamaño = ""
    var masa = ""
    var queso = ""
    var ingredientes = ""
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let p = context as! Pizza
        tamaño = p.tamaño
        tamañoLabel.setText(tamaño)
        masa = p.masa
        masaLabel.setText(masa)
        queso = p.queso
        quesoLabel.setText(queso)
        ingredientes = p.ingredientes
        ingredientesLabel.setText(ingredientes)
        
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

    @IBAction func confirmar() {
        if tamaño != "" && masa != "" && queso != "" && ingredientes != "" {
            pushControllerWithName("idCorrecto", context: nil)
            
        }else{
            error.setText("La pizza no está completa, por favor vuelva y complete su selección")
        }
    }
}
