//
//  VistaTipoMasa.swift
//  Pizzeria
//
//  Created by Daniel Pérez on 21/08/16.
//  Copyright © 2016 Daniel Pérez. All rights reserved.
//

import UIKit

class VistaTipoMasa: UIViewController {
    
    // Variables de botones
    @IBOutlet weak var btnDelgada: UIButton!
    @IBOutlet weak var btnCrujiente: UIButton!
    @IBOutlet weak var btnGruesa: UIButton!
    
    // Instancia de clase
    var selecciones = MyEnums.instancia
    
    // Acciones de botones
    @IBAction func btnDelgada_Click(sender: UIButton) {
        sender.backgroundColor = UIColor.lightGrayColor()
        btnCrujiente.backgroundColor = UIColor.clearColor()
        btnGruesa.backgroundColor = UIColor.clearColor()
        selecciones.selTipoMasa=MyEnums.TiposMasa.Delgada
    }
    
    @IBAction func btnCrujiente_Click(sender: UIButton) {
        sender.backgroundColor = UIColor.lightGrayColor()
        btnDelgada.backgroundColor = UIColor.clearColor()
        btnGruesa.backgroundColor = UIColor.clearColor()
        selecciones.selTipoMasa=MyEnums.TiposMasa.Crujiente
    }
    
    @IBAction func btnGruesa_Click(sender: UIButton) {
        sender.backgroundColor = UIColor.lightGrayColor()
        btnCrujiente.backgroundColor = UIColor.clearColor()
        btnDelgada.backgroundColor = UIColor.clearColor()
        selecciones.selTipoMasa=MyEnums.TiposMasa.Gruesa
    }
    
    // Evento de Vista
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        switch selecciones.selTipoMasa {
        case MyEnums.TiposMasa.Delgada:
            btnDelgada_Click(btnDelgada)
        case MyEnums.TiposMasa.Crujiente:
            btnCrujiente_Click(btnCrujiente)
        case MyEnums.TiposMasa.Gruesa:
            btnGruesa_Click(btnGruesa)
        default:
            return
        }
    }
}
