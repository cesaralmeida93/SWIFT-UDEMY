//
//  DetalhesViewController.swift
//  Cara ou Coroa
//
//  Created by GSW Mobile Team on 28/03/20.
//  Copyright © 2020 GSW Mobile Team. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {
    
    var numeroRandomico: Int!
    @IBOutlet weak var moedaImagem: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if numeroRandomico == 0 {
            moedaImagem.image = #imageLiteral(resourceName: "moeda_cara")
        } else {
            moedaImagem.image = #imageLiteral(resourceName: "moeda_coroa")
        }
        
        // Do any additional setup after loading the view.
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
