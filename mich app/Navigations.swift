//
//  Navigations.swift
//  mich app
//
//  Created by Mich DMark on 19/10/22.
//

import SwiftUI

struct Navigations: View {
    
    @State var isDividersActive: Bool = false
    
    var body: some View {
        
        
    NavigationView
    {
        VStack
        {
            Text("hola").navigationTitle("Home").navigationBarTitleDisplayMode(.inline)
                .toolbar(content:
                {
                ToolbarItem(placement: .navigationBarTrailing)
                {
                    Button(
                        action:{isDividersActive = true},
                            label:{ Text("+")})
                }
                })
                
                //solo recibe texto para el link
                NavigationLink("Navegar a la vista de tabviews ", destination: Tabviews())
                
                //navigation link con boton o imagen
                
                NavigationLink(
                    destination: Dividers(),
                    isActive: $isDividersActive,
                    label:{EmptyView()})
            
                
                
                
            }
            
            
            
        }
        
        
    }
}

struct Navigations_Previews: PreviewProvider {
    static var previews: some View {
        Navigations()
    }
}
