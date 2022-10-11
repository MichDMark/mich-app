//
//  Buttons.swift
//  mich app
//
//  Created by Mich DMark on 10/10/22.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        VStack //tiene un limite de vistas
        {
            Text("Hola, soy Mich DMark")
                .background(.blue)
            Button("Mi 1er Boton",
                   action:
                    {
                print("PULSE EL 1ER BOTON")
            })
            .background(.red)
            
            Button("Mi 2do Boton")
            {
                print("PULSE 2DO BOTON")
            } //manera mas resumida de hacer el boton
            .background(.green)
            
            Button(action:
                    {
                        print("Hola desde el boton con label")
                    },
                   label: {Text("Boton con label")})
            .foregroundColor(.white)
            .background(.red)
            .padding()
            .background(.blue)
            
            Button
            { saludo() }
            label: { Text("Boton llama metodo")}
                .frame(width: 200, height: 40, alignment: .leading)
                .background(.black)

            
            
        }
        
     
    
    
    }
    
    //metodos
    func saludo()
        {
            print("saludo desde el metodo")
        }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
