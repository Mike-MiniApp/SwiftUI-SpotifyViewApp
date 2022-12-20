//
//  HomeView.swift
//  SwiftUI-SpotifyApp
//
//  Created by 近藤米功 on 2022/12/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            HStack() {
                Image("favorite_music")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40,height: 40)
                Text("お気に入りの曲")
                    .foregroundColor(.white)
                    .bold()
                    .font(.system(size: 10, weight: .black, design: .default))
                    .padding(EdgeInsets(
                      top: 0,        // 上の余白
                      leading: 0,    // 左の余白
                      bottom: 0,     // 下の余白
                      trailing: 10    // 右の余白
                      ))
            }
            .background(Color(red: 35/255, green: 5/255, blue: 5/255))
                .cornerRadius(3)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
