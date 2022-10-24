//
//  ContentView.swift
//  HW2
//
//  Created by KuanWei on 2022/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomePage()
                .tabItem{
                    Label("Home",systemImage: "house.fill")
                }
            TeamsPage()
                .tabItem{
                    Label("Teams",systemImage: "sportscourt.fill")
                }
            SettingPage()
                .tabItem{
                    Label("Setting",systemImage: "gearshape.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
