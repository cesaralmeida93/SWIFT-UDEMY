//
//  ViewController.swift
//  Frases do dia
//
//  Created by GSW Mobile Team on 22/03/20.
//  Copyright © 2020 GSW Mobile Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var legendaResultado: UILabel!
    
    @IBAction func novaFrase(_ sender: Any) {
        
        var frases: [String] = []
        frases.append("frase motivacional 1")
        frases.append("frase motivacional 2")
        frases.append("frase motivacional 3")
        
        let numeroAleatorio = arc4random_uniform(3)
        legendaResultado.text = frases[Int(numeroAleatorio)]

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

