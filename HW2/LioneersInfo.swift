//
//  LioneersInfo.swift
//  HW2
//
//  Created by KuanWei on 2022/10/25.
//

import SwiftUI

struct LioneersInfo: View {
    let data: Array<Player>
    var body: some View {
        VStack{
            ScrollView(.vertical)
            {
                Text("新竹街口攻城獅")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                let columns = Array(repeating: GridItem(), count: 2)
                LazyVGrid(columns: columns){
                    ForEach(data){ item in
                        PlayerRow(player: item)
                    }
                }
            }
            
        }
    }
}

/*struct LioneersInfo_Previews: PreviewProvider {
    static var previews: some View {
        LioneersInfo()
    }
}*/
