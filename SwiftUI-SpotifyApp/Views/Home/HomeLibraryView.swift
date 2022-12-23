//
//  HomeLibraryView.swift
//  SwiftUI-SpotifyApp
//
//  Created by 近藤米功 on 2022/12/23.
//

import SwiftUI

struct HomeLibraryView: View {
    @State var homeLibraryArray = [HomeLibrary(name: "お気に入りの曲", image: "favorite_music"),HomeLibrary(name: "the chain smokers", image: "chain"),HomeLibrary(name: "Discover Weekly", image: "discover_weekly"),HomeLibrary(name: "Best of Tokyo", image: "Best_of_tokyo"),HomeLibrary(name: "Next Up", image: "Next_up"),HomeLibrary(name: "バラード", image: "ballad")]
    var body: some View {
//        HStack() {
//            Image(homeLibrary.image)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 40,height: 40)
//            Text(homeLibrary.name)
//                .foregroundColor(.white)
//                .bold()
//                .font(.system(size: 10, weight: .black, design: .default))
//                .padding(EdgeInsets(
//                  top: 0,        // 上の余白
//                  leading: 0,    // 左の余白
//                  bottom: 0,     // 下の余白
//                  trailing: 10    // 右の余白
//                  ))
//        }
//        .background(Color(red: 35/255, green: 5/255, blue: 5/255))
//            .cornerRadius(3)
        VStack {
            ScrollView(.vertical) {
                ForEach(homeLibraryArray) { homeLibrary in
                    HStack() {
                        Image(homeLibrary.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40,height: 40)
                        Text(homeLibrary.name)
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
    }
}

struct HomeLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        HomeLibraryView()
    }
}
