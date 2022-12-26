//
//  HomeLibraryView.swift
//  SwiftUI-SpotifyApp
//
//  Created by 近藤米功 on 2022/12/23.
//

import SwiftUI

struct HomeLibraryView: View {
    // MARK: - Variables
    @State var homeLibraryArray = [HomeLibrary(name: "お気に入りの曲", image: "favorite_music"),HomeLibrary(name: "the chain smokers", image: "chain"),HomeLibrary(name: "Discover Weekly", image: "discover_weekly"),HomeLibrary(name: "Best of Tokyo", image: "Best_of_tokyo"),HomeLibrary(name: "Next Up", image: "Next_up"),HomeLibrary(name: "バラード", image: "ballad")]

    var columns: [GridItem] = Array(repeating: .init(.flexible(),spacing: 0,alignment: .center), count: 2)

    @State private var selection = 0

    // MARK: - View
    var body: some View {
            VStack {
                HStack() {
                    HStack() {
                        Image(homeLibraryArray[0].image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50,height: 50)
                        Text(homeLibraryArray[0].name)
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 10, weight: .black, design: .default))
                            .padding(EdgeInsets(
                                top: 0,        // 上の余白
                                leading: 0,    // 左の余白
                                bottom: 0,     // 下の余白
                                trailing: 10    // 右の余白
                            ))
                        Spacer()
                    }.frame(width: 180,height: 50)
                    .background(Color(red: 35/255, green: 5/255, blue: 5/255))
                        .cornerRadius(3)
                    HStack {
                        Image(homeLibraryArray[1].image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50,height: 50)
                        Text(homeLibraryArray[1].name)
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 10, weight: .black, design: .default))
                            .padding(EdgeInsets(
                                top: 0,        // 上の余白
                                leading: 0,    // 左の余白
                                bottom: 0,     // 下の余白
                                trailing: 10    // 右の余白
                            ))
                        Spacer()
                    }.frame(width: 180,height: 50)
                    .background(Color(red: 35/255, green: 5/255, blue: 5/255))
                        .cornerRadius(3)
                }
                HStack() {
                    HStack {
                        Image(homeLibraryArray[2].image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50,height: 50)
                        Text(homeLibraryArray[2].name)
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 10, weight: .black, design: .default))
                            .padding(EdgeInsets(
                                top: 0,        // 上の余白
                                leading: 0,    // 左の余白
                                bottom: 0,     // 下の余白
                                trailing: 10    // 右の余白
                            ))
                        Spacer()
                    }.frame(width: 180,height: 50).background(Color(red: 35/255, green: 5/255, blue: 5/255))
                        .cornerRadius(3)
                    HStack {
                        Image(homeLibraryArray[3].image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50,height: 50)
                        Text(homeLibraryArray[3].name)
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 10, weight: .black, design: .default))
                            .padding(EdgeInsets(
                                top: 0,        // 上の余白
                                leading: 0,    // 左の余白
                                bottom: 0,     // 下の余白
                                trailing: 10    // 右の余白
                            ))
                        Spacer()
                    }.frame(width: 180,height: 50)
                    .background(Color(red: 35/255, green: 5/255, blue: 5/255))
                        .cornerRadius(3)
                }
                HStack() {
                    HStack {
                        Image(homeLibraryArray[4].image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50,height: 50)
                        Text(homeLibraryArray[4].name)
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 10, weight: .black, design: .default))
                            .padding(EdgeInsets(
                                top: 0,        // 上の余白
                                leading: 0,    // 左の余白
                                bottom: 0,     // 下の余白
                                trailing: 10    // 右の余白
                            ))
                        Spacer()
                    }.frame(width: 180,height: 50).background(Color(red: 35/255, green: 5/255, blue: 5/255))
                        .cornerRadius(3)
                    HStack {
                        Image(homeLibraryArray[5].image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50,height: 50)
                        Text(homeLibraryArray[5].name)
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 10, weight: .black, design: .default))
                            .padding(EdgeInsets(
                                top: 0,        // 上の余白
                                leading: 0,    // 左の余白
                                bottom: 0,     // 下の余白
                                trailing: 10    // 右の余白
                            ))
                        Spacer()
                    }.frame(width: 180,height: 50)
                    .background(Color(red: 35/255, green: 5/255, blue: 5/255))
                        .cornerRadius(3)
                }
            }
    }
}

struct HomeLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        HomeLibraryView()
    }
}
