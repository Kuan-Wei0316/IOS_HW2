//
//  ContentView.swift
//  HW2
//
//  Created by KuanWei on 2022/10/23.
//

import SwiftUI
import AVKit

let allData=["Braves":[Player(name: "賴廷恩", number: 0, position: "G"),
                       Player(name: "瓊斯", number: 2, position: "F"),
                       Player(name: "張宗憲", number: 3, position: "G"),
                       Player(name: "周桂羽", number: 8, position: "F"),
                       Player(name: "林志傑", number: 12, position: "G"),
                       Player(name: "林孟學", number: 13, position: "F"),
                       Player(name: "蔡文誠", number: 14, position: "F"),
                       Player(name: "辛特力", number: 17, position: "F"),
                       Player(name: "曾祥鈞", number: 21, position: "C"),
                       Player(name: "石博恩", number: 23, position: "F"),
                       Player(name: "張耕淯", number: 29, position: "F"),
                       Player(name: "塞瑟夫", number: 32, position: "C")],
             "Kings":[Player(name: "李睿騏", number: 0, position: "F"),
                      Player(name: "林書緯", number: 1, position: "G"),
                      Player(name: "林士軒", number: 2, position: "G"),
                      Player(name: "陳俊男", number: 3, position: "F"),
                      Player(name: "李威廷", number: 4, position: "G"),
                      Player(name: "牧倫斯", number: 5, position: "C"),
                      Player(name: "楊敬敏", number: 6, position: "F"),
                      Player(name: "林力仁", number: 7, position: "G"),
                      Player(name: "李愷諺", number: 9, position: "G"),
                      Player(name: "簡祐哲", number: 10, position: "G"),
                      Player(name: "楊興治", number: 13, position: "F"),
                      Player(name: "曾于豪", number: 15, position: "F"),
                      Player(name: "蘇士軒", number: 17, position: "F"),
                      Player(name: "林金榜", number: 19, position: "F"),
                      Player(name: "高承恩", number: 22, position: "G"),
                      Player(name: "聶歐瑪", number: 25, position: "C"),
                      Player(name: "夏姆斯", number: 35, position: "F"),
                      Player(name: "戴維斯", number: 50, position: "C")],
             "Pilots":[Player(name: "陳昱瑞", number: 0, position: "G"),
                      Player(name: "丁恩迪", number: 1, position: "C"),
                      Player(name: "林子洧", number: 5, position: "G"),
                      Player(name: "關達祐", number: 6, position: "G"),
                      Player(name: "施顏宗", number: 7, position: "F"),
                      Player(name: "里維羅", number: 8, position: "G"),
                      Player(name: "蘇志誠", number: 10, position: "G"),
                      Player(name: "李家慷", number: 12, position: "G"),
                      Player(name: "桑尼", number: 13, position: "F"),
                      Player(name: "陳冠全", number: 15, position: "C"),
                      Player(name: "成力煥", number: 21, position: "F"),
                      Player(name: "黃泓瀚", number: 22, position: "F"),
                      Player(name: "林正", number: 25, position: "C"),
                      Player(name: "張鎮衙", number: 27, position: "F"),
                      Player(name: "施晉堯", number: 28, position: "F"),
                      Player(name: "白曜誠", number: 30, position: "G"),
                      Player(name: "沃許本", number: 42, position: "C"),
                      Player(name: "盧峻翔", number: 69, position: "G")],
             "Lioneers":[Player(name: "姜廣謙", number: 2, position: "G"),
                      Player(name: "林明毅", number: 3, position: "G"),
                      Player(name: "高國豪", number: 4, position: "G"),
                      Player(name: "宋宇軒", number: 5, position: "G"),
                      Player(name: "曾柏喻", number: 7, position: "G"),
                      Player(name: "朱雲豪", number: 8, position: "F"),
                      Player(name: "田浩", number: 9, position: "G"),
                      Player(name: "蕭順議", number: 11, position: "F"),
                      Player(name: "李家瑞", number: 12, position: "F"),
                      Player(name: "班尼特", number: 13, position: "F"),
                      Player(name: "呂奇旻", number: 23, position: "G"),
                      Player(name: "郭少傑", number: 24, position: "F"),
                      Player(name: "阿提諾", number: 31, position: "C"),
                      Player(name: "辛巴", number: 35, position: "C"),
                      Player(name: "林宜輝", number: 36, position: "F")],
             "Dreamers":[Player(name: "陳振傑", number: 0, position: "G"),
                      Player(name: "吳家駿", number: 3, position: "G"),
                      Player(name: "林耀宗", number: 7, position: "F"),
                      Player(name: "王振原", number: 8, position: "G"),
                      Player(name: "林俊吉", number: 11, position: "G"),
                      Player(name: "米勒", number: 13, position: "F"),
                      Player(name: "吳永盛", number: 14, position: "G"),
                      Player(name: "波因特", number: 15, position: "F"),
                      Player(name: "簡浩", number: 21, position: "F"),
                      Player(name: "錢肯尼", number: 23, position: "F"),
                      Player(name: "李德威", number: 26, position: "C"),
                      Player(name: "盧冠良", number: 28, position: "G"),
                      Player(name: "吳松蔚", number: 30, position: "G"),
                      Player(name: "吉爾貝克", number: 34, position: "C"),
                      Player(name: "周柏臣", number: 88, position: "F")],
             "Steelers":[Player(name: "鐵米", number: 0, position: "F"),
                      Player(name: "林柏豪", number: 1, position: "F"),
                      Player(name: "張傑瑋", number: 2, position: "G"),
                      Player(name: "哈里斯", number: 3, position: "G"),
                      Player(name: "陳又瑋", number: 4, position: "G"),
                      Player(name: "彭俊諺", number: 5, position: "G"),
                      Player(name: "周儀翔", number: 6, position: "F"),
                      Player(name: "張伯維", number: 7, position: "F"),
                      Player(name: "王律翔", number: 8, position: "G"),
                      Player(name: "邱柏璋", number: 9, position: "F"),
                      Player(name: "王柏智", number: 10, position: "C"),
                      Player(name: "林均濠", number: 11, position: "F"),
                      Player(name: "鄭德維", number: 12, position: "F"),
                      Player(name: "呂政儒", number: 13, position: "F"),
                      Player(name: "釩斯", number: 14, position: "F"),
                      Player(name: "盧哲毅", number: 15, position: "G"),
                      Player(name: "鉑伊", number: 16, position: "C"),
                      Player(name: "林郅爲", number: 18, position: "C"),
                      Player(name: "藍少甫", number: 23, position: "F"),
                      Player(name: "楊洁之", number: 30, position: "G")]]

struct ContentView: View {
        var body: some View {
        TabView{
            HomePage()
                .tabItem{
                    Label("Home",systemImage: "house.fill")
                }
            NavigationView{
                TeamsPage(allData: allData)
            }
            .tabItem{
                Label("Teams",systemImage: "sportscourt.fill")
            }
            NavigationView{
                SettingPage()
            }
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
