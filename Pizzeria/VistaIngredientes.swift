//
//  VistaIngredientes.swift
//  Pizzeria
//
//  Created by Daniel Pérez on 21/08/16.
//  Copyright © 2016 Daniel Pérez. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {
    // Variables de botones
    @IBOutlet weak var btnJamon: UIButton!
    @IBOutlet weak var btnPepperoni: UIButton!
    @IBOutlet weak var btnPavo: UIButton!
    @IBOutlet weak var btnSalchicha: UIButton!
    @IBOutlet weak var btnAceituna: UIButton!
    @IBOutlet weak var btnCebolla: UIButton!
    @IBOutlet weak var btnPimiento: UIButton!
    @IBOutlet weak var btnPiña: UIButton!
    @IBOutlet weak var btnAnchoa: UIButton!
    @IBOutlet weak var btnChampiñon: UIButton!
    
    // Instancia de clase
    var selecciones = MyEnums.instancia
    
    // Acciones de botones
    @IBAction func btnJamon_Click(sender: UIButton) {
        if (selecciones.selIngredientes["Jamon"] != nil) {
            let valor = selecciones.selIngredientes["Jamon"]!
            selecciones.selIngredientes["Jamon"] = !valor
            PoneFondo(sender, valor: !valor)
        }
    }
    
    @IBAction func btnPepperoni_Click(sender: UIButton) {
        if (selecciones.selIngredientes["Pepperoni"] != nil) {
            let valor = selecciones.selIngredientes["Pepperoni"]!
            selecciones.selIngredientes["Pepperoni"] = !valor
            PoneFondo(sender, valor: !valor)
        }
    }
    
    @IBAction func btnPavo_Click(sender: UIButton) {
        if (selecciones.selIngredientes["Pavo"] != nil) {
            let valor = selecciones.selIngredientes["Pavo"]!
            selecciones.selIngredientes["Pavo"] = !valor
            PoneFondo(sender, valor: !valor)
        }
    }
    
    @IBAction func btnSalchicha_Click(sender: UIButton) {
        if (selecciones.selIngredientes["Salchicha"] != nil) {
            let valor = selecciones.selIngredientes["Salchicha"]!
            selecciones.selIngredientes["Salchicha"] = !valor
            PoneFondo(sender, valor: !valor)
        }
    }
    
    @IBAction func btnAceituna_Click(sender: UIButton) {
        if (selecciones.selIngredientes["Aceituna"] != nil) {
            let valor = selecciones.selIngredientes["Aceituna"]!
            selecciones.selIngredientes["Aceituna"] = !valor
            PoneFondo(sender, valor: !valor)
        }
    }
    
    @IBAction func btnCebolla_Click(sender: UIButton) {
        if (selecciones.selIngredientes["Cebolla"] != nil) {
            let valor = selecciones.selIngredientes["Cebolla"]!
            selecciones.selIngredientes["Cebolla"] = !valor
            PoneFondo(sender, valor: !valor)
        }
    }
    
    @IBAction func btnPimiento_Click(sender: UIButton) {
        if (selecciones.selIngredientes["Pimiento"] != nil) {
            let valor = selecciones.selIngredientes["Pimiento"]!
            selecciones.selIngredientes["Pimiento"] = !valor
            PoneFondo(sender, valor: !valor)
        }
    }
    
    @IBAction func btnPiña_Click(sender: UIButton) {
        if (selecciones.selIngredientes["Piña"] != nil) {
            let valor = selecciones.selIngredientes["Piña"]!
            selecciones.selIngredientes["Piña"] = !valor
            PoneFondo(sender, valor: !valor)
        }
    }
    
    @IBAction func btnAnchoa_Click(sender: UIButton) {
        if (selecciones.selIngredientes["Anchoa"] != nil) {
            let valor = selecciones.selIngredientes["Anchoa"]!
            selecciones.selIngredientes["Anchoa"] = !valor
            PoneFondo(sender, valor: !valor)
        }
    }
    
    @IBAction func btnChampiñon_Click(sender: UIButton) {
        if (selecciones.selIngredientes["Champiñon"] != nil) {
            let valor = selecciones.selIngredientes["Champiñon"]!
            selecciones.selIngredientes["Champiñon"] = !valor
            PoneFondo(sender, valor: !valor)
        }
    }
    // Evento de Vista
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        btnPavo_Click(btnPavo)
        btnPiña_Click(btnPiña)
        btnJamon_Click(btnJamon)
        btnAnchoa_Click(btnAnchoa)
        btnCebolla_Click(btnCebolla)
        btnAceituna_Click(btnAceituna)
        btnPimiento_Click(btnPimiento)
        btnChampiñon_Click(btnChampiñon)
        btnPepperoni_Click(btnPepperoni)
        btnSalchicha_Click(btnSalchicha)
    }
    
    // Método privado para poner el background del botón
    func PoneFondo(sender: UIButton, valor: Bool) {
        if valor {
            sender.backgroundColor = UIColor.clearColor()
        }
        else {
            sender.backgroundColor = UIColor.lightGrayColor()
        }
    }
}
