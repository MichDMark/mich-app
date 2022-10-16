//
//  HstackVstack.swift
//  mich app
//
//  Created by Mich DMark on 15/10/22.
//

import SwiftUI

struct HstackVstack: View {
    var body: some View {
        VStack(alignment: .trailing)
        {
            Text("1").border(Color.black).bold()
            Text("2").border(Color.black).bold()
            Text("3").border(Color.black).bold()
            
            HStack(alignment: .top )
            {
                Text("A").frame(width: 100, height: 100, alignment: .center).border(Color.black)
                HStack
                {
                    Text("B").border(Color.black).frame(alignment: .top)
                    Text("C").border(Color.black)
                }
            }.background(Color.red).border(Color.cyan)
        }.background(Color.blue)
    }
}

struct HstackVstack_Previews: PreviewProvider {
    static var previews: some View {
            Image("reto")
            HstackVstack()
        
    }
}
