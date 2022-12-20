//
//  ContentView.swift
//  SwiftUI-SpotifyApp
//
//  Created by 近藤米功 on 2022/12/20.
//

import SwiftUI

struct ContentView: View {

    // tabの非選択時の色設定
    init() {
           UITabBar.appearance().unselectedItemTintColor = .white.withAlphaComponent(0.3)
       }

    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "homekit")
                        Text("ホーム")
                    }
                }.tag(1)

            SearchView()
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("検索")
                    }
                }.tag(2)
            MyLibraryView()
                .tabItem {
                    VStack {
                        Image(systemName: "books.vertical")
                        Text("マイライブラリ")
                    }
                }.tag(3)
        }.accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
