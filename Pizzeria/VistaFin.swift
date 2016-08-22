//
//  VistaFin.swift
//  Pizzeria
//
//  Created by Daniel Pérez on 21/08/16.
//  Copyright © 2016 Daniel Pérez. All rights reserved.
//

import UIKit

class VistaFin: UIViewController {
    // Variables de Etiqueta
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var btnVolver: UIButton!
    
    // Instancia de clase
    var selecciones = MyEnums.instancia

    // Evento de Vista
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // Valida
        if selecciones.selTamaño == MyEnums.Tamaños.NoSeleccionado || selecciones.selTipoMasa == MyEnums.TiposMasa.NoSeleccionada || selecciones.selTipoQueso == MyEnums.TiposQueso.NoSeleccionado || !IngredienteSeleccionado() {
            
            lblResultado.text="Selección incompleta."
            btnVolver.enabled = false
        }
        else {
            btnVolver.enabled = true
        }
    }
    func  IngredienteSeleccionado() -> Bool {
        for ing in selecciones.selIngredientes {
            if ing.1 {
                return true
            }
        }
        return false
    }
}
