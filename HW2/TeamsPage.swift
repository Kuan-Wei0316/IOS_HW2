//
//  TeamsPage.swift
//  HW2
//
//  Created by KuanWei on 2022/10/25.
//

import SwiftUI

struct TeamsPage: View {
    let allData: Dictionary<String, Array<Player>>
    var body: some View {
        NavigationView{
            List{
                NavigationLink{
                    BravesInfo(data: allData["Braves"]!)
                }label: {
                    HStack{
                        Image("BravesLogo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                        Text("台北富邦勇士")
                    }
                }
                NavigationLink{
                    KingsInfo(data: allData["Kings"]!)
                }label: {
                    HStack{
                        Image("KingsLogo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                        Text("新北國王")
                            .padding(.trailing, 40.0)
                    }
                }
                NavigationLink{
                    PilotsInfo(data: allData["Pilots"]!)
                }label: {
                    HStack{
                        Image("PilotsLogo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                        Text("桃園璞園領航猿")
                    }
                }
                NavigationLink{
                    LioneersInfo(data: allData["Lioneers"]!)
                }label: {
                    HStack{
                        Image("LioneersLogo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                        Text("新竹街口攻城獅")
                    }
                }
                NavigationLink{
                    DreamersInfo(data: allData["Dreamers"]!)
                }label: {
                    HStack{
                        Image("DreamersLogo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                        Text("福爾摩沙台新夢想家")
                    }
                }
                NavigationLink{
                    SteelersInfo(data: allData["Steelers"]!)
                }label: {
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
        .navigationTitle("球隊總覽")
    }
}

/*struct TeamsPage_Previews: PreviewProvider {
    static var previews: some View {
        TeamsPage()
    }
}*/
