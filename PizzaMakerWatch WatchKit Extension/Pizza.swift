//
//  Pizza.swift
//  PizzaMakerWatch
//
//  Created by Oscar Manzaneque on 02/10/16.
//  Copyright © 2016 Prueba. All rights reserved.
//

import WatchKit

class Pizza: NSObject {

    var tamaño : String = "";
    var masa : String = ""
    var queso : String = ""
    var ingredientes : String = ""
    
    init(t: String, m:String, q:String , i:String){
        tamaño = t
        masa = m
        queso = q
        ingredientes = i
    }
    
}
