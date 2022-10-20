//
//  Player.swift
//  mich app
//
//  Created by Mich DMark on 19/10/22.
//

import SwiftUI
import AVKit

struct Player: View
{
    var body: some View
    {
        NavigationView
        {
            ZStack
            {
                Image("cuphead").resizable().blur(radius: 9)
                ButtonPlayerNavigationLink()
            }.ignoresSafeArea()
        }
    }
}

struct ReproductorURL: View
{
    var body: some View
    {
        VideoPlayer(player: AVPlayer(url: URL(string: "https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4")!)).frame(width: 420, height: 360, alignment: .center)
    }
}

struct ImageLabelCuphead: View {
    var body: some View
    {
        ZStack {
            Image("cuphead").resizable().aspectRatio(contentMode: .fit)
            Image(systemName: "play.fill").foregroundColor(.white)
        }
    }
}

struct ButtonPlayerNavigationLink: View
{
    @State var isPlayerActive: Bool = false
    var body: some View
    {
        VStack
        {
            Button(action: {isPlayerActive = true},
                   label:{ ImageLabelCuphead()})
            
            NavigationLink(destination: ReproductorURL(),
                           isActive: $isPlayerActive,
                           label: {EmptyView()})
    }
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}
