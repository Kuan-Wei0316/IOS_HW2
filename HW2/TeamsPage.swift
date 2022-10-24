//
//  TeamsPage.swift
//  HW2
//
//  Created by KuanWei on 2022/10/25.
//

import SwiftUI

struct TeamsPage: View {
    var body: some View {
        List{
        
            HStack{
                Image("BravesLogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                Text("台北富邦勇士")
            }
            HStack{
                Image("KingsLogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                Text("新北國王")
                    .padding(.trailing, 40.0)
            }
            HStack{
                Image("PilotsLogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                Text("桃園璞園領航猿")
            }
            HStack{
                Image("LioneersLogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                Text("新竹街口攻城獅")
            }
            HStack{
                Image("DreamersLogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                Text("台新夢想家")
                    .padding(.trailing, 40.0)
            }
            HStack{
                Image("SteelersLogo")
                    .resizable()
                    .padding(.leading, 5.0)
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                Text("高雄17直播鋼鐵人")
            }
        }
    }
}

struct TeamsPage_Previews: PreviewProvider {
    static var previews: some View {
        TeamsPage()
    }
}
