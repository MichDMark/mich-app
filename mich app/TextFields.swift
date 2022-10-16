//
//  TextFields.swift
//  mich app
//
//  Created by Mich DMark on 15/10/22.
//

import SwiftUI

struct TextFields: View {
    
    //creamos una variable que se va a usar en los campos de texto
    
    //@state es un property wrapper para decirle que mantenga el estado de la variable, ya que va a ser modificado, esto se tiene que especificar en swiftUI
    @State var textoVista:String = ""
    
    var body: some View {
        
        
        VStack {
            
            Text(textoVista).background(Color.blue)
            
            //binding, con el signo $ tenemos acceso a la variable
            TextField("Escribe Password", text: $textoVista)
            
            
            Button {
                textoVista = "ahora soy mich"
            } label: {
                Text("cambia el texto de la vista").foregroundColor(.red)
            }

        }
        
        
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}

