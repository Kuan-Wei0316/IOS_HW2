//
//  PlayerRow.swift
//  HW2
//
//  Created by KuanWei on 2022/10/25.
//

import SwiftUI
import Foundation
struct PlayerRow: View {
    var player: Player
    var body: some View {
        VStack{
            Image(player.name)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 200)
                .clipped()
            Text(player.name)
        }
        .overlay(Image(systemName: "\(player.number).circle")
                    .font(.largeTitle)
                    .foregroundColor(.black),alignment: .topLeading)
        .overlay(Text(player.position)
                    .font(.largeTitle)
                    .foregroundColor(Color.black),alignment: .bottomTrailing)
        .padding()
        .border(.gray)
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: Player(name: "林士軒", number: 0, position: "G"))
            .padding(15)
    }
}
