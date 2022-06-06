//
//  MarketStatsView.swift
//  MyTo
//
//  Created by MacBook Pro on 06/06/22.
//

import SwiftUI

struct MarketStatsView: View {
    
    @EnvironmentObject private var vm: MarketViewModel
    @Binding var showMarket: Bool
    
    var body: some View {
        HStack {
            ForEach(vm.statistics) { stat in
                StatisticView(stat: stat)
                    .frame(width: UIScreen.main.bounds.width / 3)
            }
        }
        .frame(width: UIScreen.main.bounds.width,
               alignment: showMarket ? .trailing : .leading
        )
    }
}

struct MarketStatsView_Previews: PreviewProvider {
    static var previews: some View {
        MarketStatsView(showMarket: .constant(false))
            .environmentObject(dev.marketVM)
    }
}
