//
//  VistaTipoQueso.swift
//  Pizzeria
//
//  Created by Daniel Pérez on 21/08/16.
//  Copyright © 2016 Daniel Pérez. All rights reserved.
//

import UIKit

class VistaTipoQueso: UIViewController {
    // Variables de botones
    @IBOutlet weak var btnMozarella: UIButton!
    @IBOutlet weak var btnCheddar: UIButton!
    @IBOutlet weak var btnParmesano: UIButton!
    @IBOutlet weak var btnSinQueso: UIButton!
    
    // Instancia de clase
    var selecciones = MyEnums.instancia
    
    // Acciones de botones
    @IBAction func btnMozarella_Click(sender: UIButton) {
        sender.backgroundColor = UIColor.lightGrayColor()
        btnCheddar.backgroundColor = UIColor.clearColor()
        btnParmesano.backgroundColor = UIColor.clearColor()
        btnSinQueso.backgroundColor = UIColor.clearColor()
        selecciones.selTipoQueso = MyEnums.TiposQueso.Mozarella
    }
    
    @IBAction func btnCheddar_Click(sender: UIButton) {
        sender.backgroundColor = UIColor.lightGrayColor()
        btnMozarella.backgroundColor = UIColor.clearColor()
        btnParmesano.backgroundColor = UIColor.clearColor()
        btnSinQueso.backgroundColor = UIColor.clearColor()
        selecciones.selTipoQueso = MyEnums.TiposQueso.Cheddar
    }
    
    @IBAction func btnParmesano_Click(sender: UIButton) {
        sender.backgroundColor = UIColor.lightGrayColor()
        btnCheddar.backgroundColor = UIColor.clearColor()
        btnMozarella.backgroundColor = UIColor.clearColor()
        btnSinQueso.backgroundColor = UIColor.clearColor()
        selecciones.selTipoQueso = MyEnums.TiposQueso.Parmesano
    }
    
    @IBAction func btnSinQueso_Click(sender: UIButton) {
        sender.backgroundColor = UIColor.lightGrayColor()
        btnCheddar.backgroundColor = UIColor.clearColor()
        btnParmesano.backgroundColor = UIColor.clearColor()
        btnMozarella.backgroundColor = UIColor.clearColor()
        selecciones.selTipoQueso = MyEnums.TiposQueso.SinQueso
    }
    
    // Evento de Vista
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        switch selecciones.selTipoQueso {
        case MyEnums.TiposQueso.Cheddar:
            btnCheddar_Click(btnCheddar)
        case MyEnums.TiposQueso.Mozarella:
            btnMozarella_Click(btnMozarella)
        case MyEnums.TiposQueso.Parmesano:
            btnParmesano_Click(btnParmesano)
        case MyEnums.TiposQueso.SinQueso:
            btnSinQueso_Click(btnSinQueso)
        default:
            return
        }
    }
}
