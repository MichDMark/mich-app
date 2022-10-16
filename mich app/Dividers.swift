//
//  Dividers.swift
//  mich app
//
//  Created by Mich DMark on 15/10/22.
//

import SwiftUI

struct Dividers: View {
    var body: some View {
        VStack
        {
            Circle().frame(width: 100, height: 100, alignment: .center)
            Text("circulo negro")
            
            //solo es una linea para separar de mejor manera elementos y el usuario sepa donde pulsar
            Divider().frame(height: 4).background(Color.cyan)
            
            Rectangle().foregroundColor(.red).frame(width: 200, height: 100, alignment: .center)
            Text("rectangulo rojo")
        }
    }
}

struct Dividers_Previews: PreviewProvider {
    static var previews: some View {
        Dividers()
    }
}
