//
//  MyEnums.swift
//  Pizzeria
//
//  Created by Daniel Pérez on 21/08/16.
//  Copyright © 2016 Daniel Pérez. All rights reserved.
//

import Foundation

class MyEnums {
    enum Tamaños {
        case NoSeleccionado
        case Chica
        case Mediana
        case Grande
        
        init?() {
            self = .NoSeleccionado
        }
    }
    
    enum TiposMasa {
        case NoSeleccionada
        case Delgada
        case Crujiente
        case Gruesa
        
        init?() {
            self = .NoSeleccionada
        }
    }
    
    enum  TiposQueso {
        case NoSeleccionado
        case Mozarella
        case Cheddar
        case Parmesano
        case SinQueso
    }
    
    // Utiliza un patrón singleton para usar una instancia única para todas las vistas
    static let instancia = MyEnums()
    
    // Aprovecho para crear variables globales para almaenar las selecciones actuales
    var selTamaño : Tamaños = .NoSeleccionado
    var selTipoMasa : TiposMasa = .NoSeleccionada
    var selTipoQueso : TiposQueso = .NoSeleccionado
    var selIngredientes: [String: Bool] = ["Jamon": false, "Pepperoni": false, "Pavo": false, "Salchicha": false, "Aceituna": false, "Cebolla": false, "Pimiento": false, "Piña": false, "Anchoa": false, "Champiñon": false]
}