//
//  SearchView.swift
//  SwiftUI-SpotifyApp
//
//  Created by 近藤米功 on 2022/12/20.
//

import SwiftUI

struct SearchView: View {
    // MARK: - Variables
    @State var text = ""

    // MARK: - Views
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.ignoresSafeArea()
                VStack {
                    TextField("What do you want to listen to?", text: $text)
                        .background(.white)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("検索")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title2)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // 何もしない
                    } label: {
                        Image(systemName: "camera")
                            .foregroundColor(.white)
                    }

                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
