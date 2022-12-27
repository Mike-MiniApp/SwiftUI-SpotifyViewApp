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
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
