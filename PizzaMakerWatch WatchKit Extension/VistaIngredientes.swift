//
//  VistaIngredientes.swift
//  PizzaMakerWatch
//
//  Created by Oscar Manzaneque on 02/10/16.
//  Copyright © 2016 Prueba. All rights reserved.
//

import WatchKit
import Foundation


class VistaIngredientes: WKInterfaceController {
    
    var tamaño = ""
    var masa = ""
    var queso = ""
    var ingredientes: [String] = []
    
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var Bacon: WKInterfaceSwitch!
    @IBOutlet var Salami: WKInterfaceSwitch!
    @IBOutlet var setas: WKInterfaceSwitch!
    @IBOutlet var atun: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var pollo: WKInterfaceSwitch!
    @IBOutlet var salmon: WKInterfaceSwitch!
    @IBOutlet var ternera: WKInterfaceSwitch!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        let p = context as! Pizza
        tamaño = p.tamaño
        masa = p.masa
        queso = p.queso
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func selectJamon(value: Bool) {
        if value{
            if ingredientes.count == 5{
                jamon.setOn(false)
            }else{
                ingredientes.append("Jamon")
            }
        }else{
            ingredientes.removeAtIndex(ingredientes.indexOf("Jamon")!)
        }
    }
    
    @IBAction func selectBacon(value: Bool) {
        if value{
            if ingredientes.count == 5 {
                Bacon.setOn(false)
            }else{
                ingredientes.append("Bacon")
            }
            
        }else{
            ingredientes.removeAtIndex(ingredientes.indexOf("Bacon")!)
        }
    }
    @IBAction func selectSalami(value: Bool) {
        if value{
            if ingredientes.count == 5 {
                Salami.setOn(false)
            }else{
                ingredientes.append("Salami")
            }
            
        }else{
            ingredientes.removeAtIndex(ingredientes.indexOf("Salami")!)
        }
    }
    
    @IBAction func selectSetas(value: Bool) {
        if value{
            if ingredientes.count == 5 {
                setas.setOn(false)
            }else{
                ingredientes.append("Setas")
            }
            
        }else{
            ingredientes.removeAtIndex(ingredientes.indexOf("Setas")!)
        }
    }
    
    @IBAction func selectAtun(value: Bool) {
        if value{
            if ingredientes.count == 5 {
                atun.setOn(false)
            }else{
                ingredientes.append("Atun")
            }
            
        }else{
            ingredientes.removeAtIndex(ingredientes.indexOf("Atun")!)
        }
    }
    
    @IBAction func selectCebolla(value: Bool) {
        if value{
            if ingredientes.count == 5 {
                cebolla.setOn(false)
            }else{
                ingredientes.append("Cebolla")
            }
            
        }else{
            ingredientes.removeAtIndex(ingredientes.indexOf("Cebolla")!)
        }
    }
    
    @IBAction func selectPollo(value: Bool) {
        if value{
            if ingredientes.count == 5 {
                pollo.setOn(false)
            }else{
                ingredientes.append("Pollo")
            }
            
        }else{
            ingredientes.removeAtIndex(ingredientes.indexOf("Pollo")!)
        }
    }
    
    @IBAction func selectSalmon(value: Bool) {
        if value{
            if ingredientes.count == 5 {
                salmon.setOn(false)
            }else{
                ingredientes.append("Salmon")
            }
            
        }else{
            ingredientes.removeAtIndex(ingredientes.indexOf("Salmon")!)
        }
    }
    
    @IBAction func selectTernera(value: Bool) {
        if value{
            if ingredientes.count == 5 {
                ternera.setOn(false)
            }else{
                ingredientes.append("Ternera")
            }
            
        }else{
            ingredientes.removeAtIndex(ingredientes.indexOf("Ternera")!)
        }
    }
    
    @IBAction func DetallesPizza() {
        var ings = ""
        for i in ingredientes{
            ings = ings + i + ","
        }
        let pizza = Pizza(t: tamaño, m: masa, q: queso, i: ings)
        pushControllerWithName("idConfirmar", context: pizza)
    }
}
