import UIKit


////String
//var nomeUsuario: String = ""
//
//nomeUsuario = "César"
//
//nomeUsuario = "Caralho"
//
////Numero inteiro
//var numeroInteiro = 10
//
//numeroInteiro += 5
//
////Double
//var numeroDecimal: Double = 9.4
//
////Float
//var numeroFloat: Float = 3.141516
//
////Exibir
//print("O valor é: \(numeroInteiro)")

// desafio

//var numero1: Int
//var numero2: Int
//var total: Int
//
//numero1 = 20
//numero2 = 2
//total = numero1 + numero2
//
//print("O valor total é: \(total)")

//Arrays

//var nomes = ["César", "Rasec", "Cézão"]
//
//print(nomes[1])
//
//var nomesString: [String]
//
//nomesString = ["César"]
//
//nomesString += ["Rasec"]
//
//nomesString.append("Pow")
//
//nomesString.remove(at: 2)
//
//print(nomesString)

//Desafio

//var frases: [String] = []
//
//frases.append("Olá")
//frases.append("Adeus")
//frases.append("corona virus")
//print(frases)

//Set
//
//var lista = Set<String>()
//
//lista.insert("pizza")
//lista.insert("Suco")
//lista.insert("Refrigerante")
//
//print(lista)

//Dicionarios
//
//var animais = [Int: String]()
//
//animais[1] = "animal branco que hiberna"
//animais[2] = "Melhor amigo do homem"
//
//print(animais[2]!)

//var mes = [Int: String]()
//mes[1] = "Janeiro"
//mes[2] = "Fevereiro"
//mes[3] = "Março"
//mes[4] = "Abril"
//mes[5] = "Maio"
//mes[6] = "Junho"
//mes[7] = "Julho"
//mes[8] = "Agosto"
//mes[9] = "Setembto"
//mes[10] = "Outubro"
//mes[11] = "Novembro"
//mes[12] = "Dezembro"
//
//print(mes[10]!)

//if else

//var preco: Int
//var resultado: String
//
//preco = 500
//resultado = "Nenhuma categoria"
//
//if preco >= 100 && preco <= 200 {
//    resultado = "Carros populares"
//} else if (preco > 200 && preco <= 300){
//    resultado = "Carros médios"
//}else if (preco > 300 && preco <= 400) {
//    resultado = "Carros luxuosos"
//} else {
//    resultado = "Eike batista"
//}
//
//print(resultado)

// loops - for
//for var i in 0..<=5 {
//    print("Número: \(i)")
//}

//var comentarios: [String] = []
//comentarios.append("Gostei da foto...muito legal")
//comentarios.append("Ficou muito bonita nessa foto")
//comentarios.append("Que legal sua viagem")
//
//for var comentario in comentarios {
//    print(comentario)
//}
//
//var contador = 0
//
//while contador < 6 {
//    print(contador)
//    contador += 1
//}

//var contador = 0
//
//repeat {
//
//    print(contador)
//
//    contador += 1
//
//}while contador < 6

//Funções
//func multiplicar(numero1: Int, numero2: Int) -> Int {
//
//    return (numero1 * numero2)
//}
//
//var num: Int = multiplicar(numero1: 2, numero2: 3)
//
//num += 2
//
//print(num)

//Desafio

//func descobrirAnoNascimento(ano: Int) -> Int {
//    return 2020 - ano
//}
//
//var ano = descobrirAnoNascimento(ano: 1993)
//print(ano)

//Opcionais

//var valor1: Int = 0
//var valor2: Int?
//var total: Int = 0
//
//if let valor2Testado = valor2 {
//    total = valor1 + valor2Testado
//}
//
//print(total)

//Classes
//
//class Casa {
//    // Atributos
//    var cor: String
//
//    init (cor: String) {
//        self.cor = cor
//    }
//
//    //metodos -ações
//    func getCor() -> String {
//        return self.cor
//    }
//}
//
////Criar o objeto
//var casa = Casa(cor: "Azul")
//casa.getCor()
//
//var casa2 = Casa(cor: "Preto")
//casa2.getCor()
//

//Desafio
//class Cachorro {
//    var cor: String
//
//    init(cor: String) {
//        self.cor = cor
//    }
//
//    func correr() -> String {
//        return "Correu"
//    }
//
//    func latir() -> String {
//        return "Au"
//    }
//}
//
//var cachorro = Cachorro(cor: "Azul")
//cachorro.correr()
//cachorro.latir()

//herança
class Animal {
    var cor = "marrom"
    
    func dormir() -> String {
        return "dormir"
    }
}

class Cachorro: Animal {
    func latir() -> String {
        return "au"
    }
}

class Passaro: Animal {
    func voar() -> String {
        return "voar"
    }
}

class Papagaio: Passaro {
    func repetir() -> String {
        return "repetir"
    }
}

//criar objeto
var cachorro = Cachorro()
cachorro.cor
cachorro.latir()

var passaro = Passaro()
passaro.cor
passaro.voar()

var papagaio = Papagaio()
papagaio.cor
papagaio.repetir()
