//
//  HomePage.swift
//  HW2
//
//  Created by KuanWei on 2022/10/25.
//

import SwiftUI
import AVKit

struct HomePage: View {
    var body: some View {
        VStack{
            Link(destination: URL(string: "https://pleagueofficial.com")!, label: {
                Image("P.LEAGUE+")
                    .resizable()
                    .scaledToFit()
                    .padding(-15)
                    .frame(width: 400,height: 150)
                    .overlay(Text("官方頁面連結")
                    .foregroundColor(.white)
                    ,alignment:.bottom)
            })
            TabView(){
                Link(destination: URL(string: "https://pleagueofficial.com/schedule-pre-season")!, label: {
                    Image("PLG_Season2")
                        .resizable()
                        .scaledToFit()
                })
                
                Link(destination: URL(string: "https://donations.eden.org.tw/detail.php?detailId=JCU2NTMjIQ==&rePageUrl=L2luZGV4LnBocD8mbGV2ZWwxX2lkPUpDVTBJeUUlM0Q=")!, label: {
                    Image("Eden")
                        .resizable()
                        .scaledToFit()
                })
            }
            .tabViewStyle(.page)
            .frame(height: 250)
            Spacer()
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
