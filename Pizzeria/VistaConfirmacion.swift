//
//  VistaConfirmacion.swift
//  Pizzeria
//
//  Created by Daniel Pérez on 21/08/16.
//  Copyright © 2016 Daniel Pérez. All rights reserved.
//

import UIKit

class VistaConfirmacion: UIViewController {
    // Variables de etiquetas
    @IBOutlet weak var lblTamaño: UILabel!
    @IBOutlet weak var lblTipoMasa: UILabel!
    @IBOutlet weak var lblTipoQueso: UILabel!
    @IBOutlet weak var lblIngredientes: UILabel!
    
    // Instancia de clase
    var selecciones = MyEnums.instancia

    // Evento de Vista
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        // Llena las etiquetas con las selecciones
        lblTamaño.text = selecciones.selTamaño.ToString()
        lblTipoMasa.text = selecciones.selTipoMasa.ToString()
        lblTipoQueso.text = selecciones.selTipoQueso.ToString()
        lblIngredientes.text = ObtenerIngredientes()
    }
    
    // Método para construir la cadena de ingredientes
    func ObtenerIngredientes() -> String {
        var resultado: String = ""
        for ingrediente in selecciones.selIngredientes {
            if ingrediente.1 {
                resultado += ingrediente.0 + ", "
            }
        }
        return resultado
    }

}
