//
//  ViewController.swift
//  Core Data Aula
//
//  Created by GSW Mobile Team on 30/03/20.
//  Copyright © 2020 GSW Mobile Team. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext

        /*Criar Requisição*/
        let requisicao = NSFetchRequest<NSFetchRequestResult>(entityName: "Produto")

        //Ordenar de A-Z ou Z-A
        let ordenacaoAZ = NSSortDescriptor(key: "descricao", ascending: true)
        //let ordenacaoZA = NSSortDescriptor(key: "preco", ascending: false)
        
        //Aplicar filtros
        //let predicate = NSPredicate(format: "descricao == %@", "Acer Insipre 15")
        //let predicate = NSPredicate(format: "descricao contains [c] %@", "acer")
        //let predicate = NSPredicate(format: "descricao beginsWith [c] %@", "mac")
        //let predicate = NSPredicate(format: "preco <> %@", "59.9999")
        
        //let filtroDescricao = NSPredicate(format: "descricao contains [c] %@", "pho")
        //let filtroPreco = NSPredicate(format: "preco >= %@", "89.99")

        //let combinacaoFiltro = NSCompoundPredicate(andPredicateWithSubpredicates: [filtroDescricao, filtroPreco])
        //let combinacaoFiltro = NSCompoundPredicate(andPredicateWithSubpredicates: [filtroDescricao, filtroPreco])
        
//        let predicate = NSPredicate(format: "descricao == %@", "Acer Insipre 15")
//        let filtroPreco = NSPredicate(format: "preco < %@", "60")

        
        //aplicar filtros criados à requisição
        requisicao.sortDescriptors = [ordenacaoAZ]
//        requisicao.predicate = filtroPreco
        
        do {
            let produtos = try context.fetch(requisicao)

            if produtos.count > 0 {

                for produto in produtos as! [NSManagedObject]{

                    if let descricao = produto.value(forKey: "descricao") {
                        if let cor = produto.value(forKey: "cor") {
                            if let preco = produto.value(forKey: "preco") {

                                print(String(describing: descricao) + " | " + String(describing: cor) + " | " + String(describing: preco))
                                
                                //remover
//                                context.delete(produto)
//                                do{
//                                    try context.save()
//                                    print("Sucesso ao remover o produto!")
//                                } catch {
//                                    print("Erro ao remover o produto!")
//                                }
                                
                                //atualizar
//                                produto.setValue(220.50, forKey: "preco")
//                                do{
//                                    try context.save()
//                                    print("Sucesso ao atualizar o produto!")
//                                } catch {
//                                    print("Erro ao atualizar o produto!")
//                                }
                            }
                        }
                    }
                }

            } else {
                print("Nenhum Produto Encontrado")
            }
        } catch {

        }
        
        
//        /*Criar Entidade*/
//        let produto = NSEntityDescription.insertNewObject(forEntityName: "Produto", into: context)
//
//        /*Configura Objeto*/
//        produto.setValue("Zenfone 6", forKey: "descricao")
//        produto.setValue("Branco", forKey: "cor")
//        produto.setValue(159, forKey: "preco")
//
//        //Salvar os dados
//        do {
//            try context.save()
//            print("Sucesso ao salvar dados")
//        } catch {
//            print("Erro ao salvar os dados")
//        }
        
        

    }

}

