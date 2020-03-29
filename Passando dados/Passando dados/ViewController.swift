//
//  ViewController.swift
//  Passando dados
//
//  Created by GSW Mobile Team on 28/03/20.
//  Copyright © 2020 GSW Mobile Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nomeCampo: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "enviarDados" {
            
            print("empougou")
            
            let viewControllerDestino = segue.destination as! DetalhesViewController
            viewControllerDestino.textoRecebido = nomeCampo.text!
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

