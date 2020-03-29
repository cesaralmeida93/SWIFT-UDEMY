//
//  ViewController.swift
//  Cara ou Coroa
//
//  Created by GSW Mobile Team on 28/03/20.
//  Copyright © 2020 GSW Mobile Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "jogarMoeda" {
            let viewControllerDestino = segue.destination as! DetalhesViewController
            viewControllerDestino.numeroRandomico = Int(arc4random_uniform(2))
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

