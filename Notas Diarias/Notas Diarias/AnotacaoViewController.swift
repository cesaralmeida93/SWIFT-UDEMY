//
//  AnotacaoViewController.swift
//  Notas Diarias
//
//  Created by GSW Mobile Team on 31/03/20.
//  Copyright © 2020 GSW Mobile Team. All rights reserved.
//

import UIKit
import CoreData

class AnotacaoViewController: UIViewController {

    @IBOutlet weak var texto: UITextView!
    var context: NSManagedObjectContext!
    var anotacao: NSManagedObject!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configurações iniciais
        self.texto.becomeFirstResponder()
        if anotacao != nil {
            if let textoRecuperado = anotacao.value(forKey: "texto") {
                self.texto.text = String(describing: textoRecuperado)
            }
        } else {
            self.texto.text = ""
        }
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
    }
    
    @IBAction func salvar(_ sender: Any) {
        
        if anotacao != nil {
            self.atualizarAnotacao()
        } else {
        self.salvarAnotacao()
        }
        //retorna para a tela principal
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    func atualizarAnotacao() {
        
        anotacao.setValue(self.texto.text, forKey: "texto")
        anotacao.setValue(Date(), forKey: "data")
        
        do {
            try context.save()
            print("Sucesso ao atualizar aplicação")
        } catch let erro {
            print("Erro ao atualizar anotação: \(erro.localizedDescription)")
        }
        
    }
    
    func salvarAnotacao() {
        
        //cria objeto para anotação
        let novaAnotacao = NSEntityDescription.insertNewObject(forEntityName: "Anotacao", into: context)
        
        //configura anotação
        novaAnotacao.setValue(self.texto.text, forKey: "texto")
        novaAnotacao.setValue(Date(), forKey: "data")
        
        do {
            try context.save()
            print("Sucesso ao salvar aplicação")
        } catch let erro {
            print("Erro ao salvar anotação: \(erro.localizedDescription)")
        }
        
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
