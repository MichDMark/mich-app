//
//  Tabviews.swift
//  mich app
//
//  Created by Mich DMark on 18/10/22.
//

import SwiftUI

struct Tabviews: View {
    var body: some View {
        
        TabView
        {
            TextMod().tabItem{
            Text("pantalla 1")
            Image(systemName: "moon")
        }
            
            TextFields().tabItem{
                Text("pantalla 2")
                Image(systemName: "play")
            }
            
            ZstackPadding().tabItem{
                Text("pantalla 3")
                Image(systemName: "terminal")
            }
        }
    }
}

struct Tabviews_Previews: PreviewProvider {
    static var previews: some View {
        Tabviews()
    }
}
