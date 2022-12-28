//
//  ChartView.swift
//  SwiftUI-SpotifyApp
//
//  Created by 近藤米功 on 2022/12/27.
//

import SwiftUI

struct ChartView: View {
    // MARK: - Variables
    @State private var chartArray = [Chart(text: "Vaundy, BTS, YOASOBI, The 1975, Taylor Swift", image: "hot_hits"),Chart(text: "今、再生回数が一番多い曲（毎日更新）- 日本", image: "japan_top50"), Chart(text: "今、再生回数が一番多い曲（毎日更新）- global", image: "global_top50")]

    @State private var recommendArray = [Chart(text: "The 1975, The Weekend, 21 Savage, ONE OK ROCK", image: "Next_up"),Chart(text: "Vaundy, YOASOBI, Twice, Ado", image: "Best_of_tokyo"),Chart(text: "ONE OK ROCK, YOASOBI", image: "ballad")]

    // MARK: - View
    var body: some View {
        VStack {
            HStack {
                Text("チャート")
                    .bold()
                    .font(.title2)
                    .foregroundColor(.white)
                Spacer()
            }
            ScrollView(.horizontal) {
                HStack() {
                    ForEach(chartArray) { chart in
                        VStack(spacing: 5) {
                            Image(chart.image)
                                .resizable()
                                .frame(width: 150,height: 150)
                            Text(chart.text)
                                .frame(width: 150)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            HStack {
                Text("あなたへのおすすめ")
                    .bold()
                    .font(.title2)
                    .foregroundColor(.white)
                Spacer()
            }
            ScrollView(.horizontal) {
                HStack() {
                    ForEach(recommendArray) { recommend in
                        VStack(spacing: 5) {
                            Image(recommend.image)
                                .resizable()
                                .frame(width: 150,height: 150)
                            Text(recommend.text)
                                .frame(width: 150)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }


        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
