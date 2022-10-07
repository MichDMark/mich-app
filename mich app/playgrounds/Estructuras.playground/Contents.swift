import UIKit

var greeting = "Hello, playground"

struct calculadora
{
    //propiedades
    var numeroUno: Int
    var numeroDos: Int
    
    
    //metodos
    func suma() ->Int
    {
        var numeroInternoSuma: Int = 11
        return numeroDos + numeroUno + numeroInternoSuma
    }
    
    func mult() -> Int
    {
        return self.numeroUno * self.numeroDos
    }
}


var sumaCalculada = calculadora(numeroUno: 10, numeroDos: 8)
sumaCalculada.suma()
sumaCalculada.mult()
