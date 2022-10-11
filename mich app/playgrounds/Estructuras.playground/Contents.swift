import UIKit

var greeting = "Hello, playground"

struct calculadora
{
    //propiedades
    var numeroUno: Int
    var numeroDos: Int
    
    
    //metodos
    
    init()
    {
        numeroUno = 10
        numeroDos = 20
    }
    
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


var instanciaSumaCalculada = calculadora()
instanciaSumaCalculada.suma()
instanciaSumaCalculada.mult() //llamada a los metodos
print(instanciaSumaCalculada.numeroUno)
print(instanciaSumaCalculada.numeroDos)

instanciaSumaCalculada.numeroUno = 4
instanciaSumaCalculada.numeroDos = 8 //damos valores nuevos a las properties

print(instanciaSumaCalculada.numeroUno) //cambiaron los valores del init
print(instanciaSumaCalculada.numeroDos)

var instanciaSumaDos = instanciaSumaCalculada //copia los valores de la 1ra instancia en la segunda

print(instanciaSumaDos.numeroUno)
print(instanciaSumaDos.numeroDos) //copio los valores ya modificados

instanciaSumaCalculada.numeroUno = 5
instanciaSumaCalculada.numeroDos = 10 //damos valores nuevos a las properties

print("Imprime los valores de la 1ra instancia")
print(instanciaSumaCalculada.numeroUno) //cambiaron los valores del init
print(instanciaSumaCalculada.numeroDos)

print("los valores de la segunda instancia ")
print(instanciaSumaDos.numeroUno)
print(instanciaSumaDos.numeroDos) //al modificar la 1ra instancia no se modificada la segunda
