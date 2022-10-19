//
//  ZstackPadding.swift
//  mich app
//
//  Created by Mich DMark on 18/10/22.
//

import SwiftUI

struct ZstackPadding: View
{
    var body: some View {
        
        ZStack //acomoda los elementos de atras para adelante
        {
            Color.yellow
            
            VStack
            {
                Imagenes()
                Text("mich unboxing").padding(.bottom, 6.0)
                DatosEntradaUsuario()
                Reto()
                Reto()
                TextMod() //aqui se esta llamando a otro archivo
            }
        }.ignoresSafeArea() //rellena toda la pantalla, incluso alrededor del notch y la parte de abajo
    }
}


struct Imagenes: View {
    var body: some View
    {
        VStack {
            Image("unboxing").resizable().aspectRatio( contentMode: .fit).frame(width: 200, height: 100, alignment: .center)
            
            Image("unboxing").resizable().aspectRatio( contentMode: .fit).frame(width: 200, height: 100, alignment: .center).blur(radius: 2)
        }
        
        
    }
}

struct DatosEntradaUsuario: View {
    
    @State var curso: String = "iOS"
    
    var body: some View
    {
        ZStack
        {
            
            if curso == ""
            {
                Text("Curso").foregroundColor(Color.blue)
            }
            TextField("", text: $curso).padding(.leading, 50.0)
        }
    }
}

struct Reto: View {
    var body: some View
    {
        VStack(alignment: .trailing)
        {
            Text("1").border(Color.black)
            
            Text("2").border(Color.black)
            Text("3").border(Color.black)
            
            HStack(alignment: .top)
            {
                Text("A").frame(width: 100, height: 100, alignment: .center).border(Color.black)
                Text("B").border(Color.black)
                Text("C").border(Color.black)
            }.background(Color.red)
        }.background(Color.blue)
    }
}

struct ZstackPadding_Previews: PreviewProvider {
    static var previews: some View {
        ZstackPadding()
        //Imagenes()
    }
}
