//
//  DetalhesViewController.swift
//  Passando dados
//
//  Created by GSW Mobile Team on 28/03/20.
//  Copyright © 2020 GSW Mobile Team. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {
    
    @IBOutlet weak var resultadoLegenda: UILabel!
    var textoRecebido: String = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultadoLegenda.text = textoRecebido
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
