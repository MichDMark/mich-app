//
//  Solucion_reto_HVstack.swift
//  mich app
//
//  Created by Mich DMark on 15/10/22.
//

import SwiftUI

struct Solucion_reto_HVstack: View {
    var body: some View {
        
        //spacing es un espacio entre los elmentos del stack
        VStack(alignment: .trailing, spacing: 0)
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

struct Solucion_reto_HVstack_Previews: PreviewProvider {
    static var previews: some View {
        Image("reto")
        Solucion_reto_HVstack()
    }
}
