//
//  ViewController.swift
//  Alerta
//
//  Created by GSW Mobile Team on 29/03/20.
//  Copyright © 2020 GSW Mobile Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func abrirAlerta(_ sender: Any) {
        
        let alerta = UIAlertController(title: "Adicionar Contato", message: "Deseja adicionar um contato?", preferredStyle: .alert)
        
        let confirmar = UIAlertAction(title: "Confirmar", style: .default, handler: nil)
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive, handler: nil)
        
        alerta.addAction(confirmar)
        alerta.addAction(cancelar)
        
        present(alerta, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

