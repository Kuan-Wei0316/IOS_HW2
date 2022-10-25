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
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            Group{
                Text("關於聯盟")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                Text("秉持紮根這片土地的初心，盡心傾聽球迷聲音")
                    .multilineTextAlignment(.leading)
                Text("以健全架構與制度，持續推動籃球發展")
                    .multilineTextAlignment(.leading)
                Text("以成熟的職業化體制為目標，深耕在地籃球")
                    .multilineTextAlignment(.leading)
                Text("發揮體育產業火車頭效應")
                    .multilineTextAlignment(.leading)
                Text("以最精緻、最能與球迷互動的核心宗旨立足臺灣")
                    .multilineTextAlignment(.leading)
                Text("在亞洲籃壇發揮影響力")
                    .multilineTextAlignment(.leading)
            }
            HStack{
                Link(destination: URL(string: "https://www.facebook.com/PLEAGUE.official/")!, label: {
                    Image("FB")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                })
                Link(destination: URL(string: "https://www.instagram.com/p.league.official/")!, label: {
                    Image("IG")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                })
                Link(destination: URL(string: "https://www.youtube.com/channel/UCBGpG-uiIlxb348HZrEprEA")!, label: {
                    Image("YT")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                })
            }
            
            Spacer()
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
