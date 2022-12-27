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
                ScrollView {
                    VStack() {
                        HStack {
                            Button {
                                // 何もしない
                            } label: {
                                Text("音楽")
                                    .frame(width: 80,height: 30)
                                    .foregroundColor(.white)
                                    .background(Color(red: 40/255, green: 40/255, blue: 40/255))
                                    .cornerRadius(10)
                            }
                            Button {
                                // 何もしない
                            } label: {
                                Text("ポッドキャストと番組")
                                    .frame(width: 270,height: 30)
                                    .foregroundColor(.white)
                                    .background(Color(red: 40/255, green: 40/255, blue: 40/255))
                                    .cornerRadius(10)
                            }
                            Spacer()
                        }
                        HomeLibraryView()
                        ChartView()
                    }
                }
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        // 何もしない
                    } label: {
                        Text("こんにちは")
                            .foregroundColor(.white)
                            .font(.title2)
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
