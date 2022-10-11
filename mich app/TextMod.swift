//
//  TextMod.swift
//  mich app
//
//  Created by Mich DMark on 10/10/22.
//

import SwiftUI

struct TextMod: View {
    var body: some View {
        Text("Hola, soy Mich")
            .font(.largeTitle)
            .background(Color.black)
            .foregroundColor(.red)
            .padding([.bottom],40)
            .padding(.trailing, 50)
            .frame(width: 300, height: 100, alignment: .leading)
            .background(Color.blue)//este background es del padding, no del texto
        
    } //en swift importa mucho el orden de los cambios
}

//cada modificacion a cada elemento, crea un elemento nuevo encima del anterior, por eso hay que hacerlo en el roden correcto

struct TextMod_Previews: PreviewProvider {
    static var previews: some View {
        TextMod()
    }
}


//padding establece un espacio de llenado que rodea el elemento
//frame el recuadro
