//
//  ViewController.swift
//  Signos
//
//  Created by GSW Mobile Team on 29/03/20.
//  Copyright © 2020 GSW Mobile Team. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []
    var significadoSignos: Array<String> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Lista de signos
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmemos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        // Lista de Significados
        significadoSignos.append("O ariano é uma pessoa cheia de energia e entusiasmo. Pioneiro e aventureiro, lhe encantam as metas, a liberdade e as idéias novas.")
        significadoSignos.append("Zeloso e possessivo, o touro pode tender a ser inflexível e ressentido. Ás vezes o Touto...")
        significadoSignos.append("3 - ..")
        significadoSignos.append("4 - ..")
        significadoSignos.append("5 - ..")
        significadoSignos.append("6 - ..")
        significadoSignos.append("7 - ..")
        significadoSignos.append("8 - ..")
        significadoSignos.append("9 - ..")
        significadoSignos.append("10 - ..")
        significadoSignos.append("11 - ..")
        significadoSignos.append("12 - ..")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertController = UIAlertController(title: "Significado do Signo", message: significadoSignos[indexPath.row], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "ok", style: .default, handler: nil)
        
        alertController.addAction(acaoConfirmar)
        
        present(alertController, animated: true, completion: nil)
    }
    
    


}

