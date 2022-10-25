//
//  SettingPage.swift
//  HW2
//
//  Created by KuanWei on 2022/10/25.
//

import SwiftUI

struct SettingPage: View {
    var body: some View {
        VStack{
            ScrollView(.vertical){
                let columns = [GridItem()]
                LazyVGrid(columns: columns){
                    Button(action:{ UIApplication.shared.setAlternateIconName(nil)}){
                        Image("PLG_Logo")
                            .resizable()
                            .scaledToFill()
                    }
                    Button(action:{ UIApplication.shared.setAlternateIconName("PinkIcon")}){
                        Image("PLG_Pink")
                            .resizable()
                            .scaledToFill()
                    }
                }
                .frame(width: 250)
            }
            .navigationTitle("Setting")
        }
    }
}

struct SettingPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingPage()
    }
}
