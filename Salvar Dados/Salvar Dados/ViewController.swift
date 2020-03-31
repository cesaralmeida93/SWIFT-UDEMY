//
//  ViewController.swift
//  Salvar Dados
//
//  Created by GSW Mobile Team on 29/03/20.
//  Copyright © 2020 GSW Mobile Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard.set("Cézão", forKey: "nome")
        UserDefaults.standard.removeObject(forKey: "nome")
        let texto = UserDefaults.standard.object(forKey: "nome")
        print(texto)
        
        var comidas: [String] = ["Arroz", "Feijão", "Macarrão"]
        UserDefaults.standard.set(comidas, forKey: "comidas")
        UserDefaults.standard.removeObject(forKey: "comidas")
        let retorno = UserDefaults.standard.object(forKey: "comidas")
        print(retorno)
        
    }


}

