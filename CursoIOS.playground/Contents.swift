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

var preco: Int
var resultado: String

preco = 500
resultado = "Nenhuma categoria"

if preco >= 100 && preco <= 200 {
    resultado = "Carros populares"
} else if (preco > 200 && preco <= 300){
    resultado = "Carros médios"
}else if (preco > 300 && preco <= 400) {
    resultado = "Carros luxuosos"
} else {
    resultado = "Eike batista"
}

print(resultado)
