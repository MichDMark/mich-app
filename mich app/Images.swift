//
//  Images.swift
//  mich app
//
//  Created by Mich DMark on 12/10/22.
//

import SwiftUI

struct Images: View {
    var body: some View {
        VStack
        {
            Text("imagenes")
            
            Image("unboxing")
                .resizable()
                .aspectRatio(contentMode: .fit).frame(width:500, height: 150, alignment: .center)
            
            Image("unboxing")
                .resizable()
                .aspectRatio(contentMode: .fit).frame(width:500, height: 150, alignment: .center)
                .blur(radius: 3)
            
            Image("unboxing")
                .resizable()
                .aspectRatio(contentMode: .fit).frame(width:500, height: 150, alignment: .center)
                .opacity(0.5)
            
            Button {
                print("pulsa video")
            }
                label: {
                Image("unboxing")
                    .resizable()
                    .aspectRatio(contentMode: .fit).frame(width:500, height: 150, alignment: .center)
            }
            
            Image(systemName: "moon.fill")

        }
    } 
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
