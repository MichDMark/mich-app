import UIKit

var greeting = "Hello, playground"
//la funcion mas usada
print("hola")

//argumentos o parametros de entrada de print
print("Hola","mundo", separator: "...")

//estructura de una funcion

func suma()
{
    print("El resultado es 2")
}
suma()

//estructura con parametros de entrada
func sumaXY(x:Int, y:Int)
{
    print(x + y)
}

sumaXY(x: 5, y: 4)

//tipo de dato de retorno

func sumaXYRetorno(numeroUno:Int, numeroDos:Int) -> Int
{
    return numeroUno + numeroDos
}

var resul = sumaXYRetorno(numeroUno: 2, numeroDos: 9)
print(resul)

//argument labels

func saluda(_ destinatario: String, de receptor:String)
{
    print("Mando saludos a: \(destinatario) de: \(receptor)")
}

saluda("Mich", de: "Hermit")
