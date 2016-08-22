//
//  ViewController.swift
//  Pizzeria
//
//  Created by Daniel Pérez on 21/08/16.
//  Copyright © 2016 Daniel Pérez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Variables de botones
    @IBOutlet weak var btnTamMediano: UIButton!
    @IBOutlet weak var btnTamChica: UIButton!
    @IBOutlet weak var btnTamrande: UIButton!
    
    // Instancia de la clase
    var selecciones = MyEnums.instancia
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnChica(sender: UIButton) {
        sender.backgroundColor = UIColor.darkGrayColor()
        btnTamMediano.backgroundColor = UIColor.clearColor()
        btnTamrande.backgroundColor = UIColor.clearColor()
        selecciones.selTamaño=MyEnums.Tamaños.Chica
    }

    @IBAction func btnMediana(sender: UIButton) {
        sender.backgroundColor = UIColor.darkGrayColor()
        btnTamChica.backgroundColor = UIColor.clearColor()
        btnTamrande.backgroundColor = UIColor.clearColor()
        selecciones.selTamaño = MyEnums.Tamaños.Mediana
    }
    
    @IBAction func btnGrande(sender: UIButton) {
        sender.backgroundColor = UIColor.darkGrayColor()
        btnTamMediano.backgroundColor = UIColor.clearColor()
        btnTamChica.backgroundColor = UIColor.clearColor()
        selecciones.selTamaño=MyEnums.Tamaños.Grande
    }
}

