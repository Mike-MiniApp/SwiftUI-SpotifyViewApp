//
//  HomeView.swift
//  SwiftUI-SpotifyApp
//
//  Created by 近藤米功 on 2022/12/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.ignoresSafeArea()
                VStack() {
                   HomeLibraryView()
                }
                .background(Color(red: 0/255, green: 0/255, blue: 0/255))
                    .cornerRadius(3)
                    .frame(width: 300,height: 150)
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        // 何もしない
                    } label: {
                        Text("こんにちは")
                            .foregroundColor(.white)
                            .bold()
                    }
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        // 何もしない
                    } label: {
                        Image(systemName: "bell")
                            .foregroundColor(.white)
                    }

                    Button {
                        // 何もしない
                    } label: {
                        Image(systemName: "clock")
                            .foregroundColor(.white)
                    }
                    Button {
                        // 何もしない
                    } label: {
                        Image(systemName: "gearshape")
                            .foregroundColor(.white)
                    }


                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
