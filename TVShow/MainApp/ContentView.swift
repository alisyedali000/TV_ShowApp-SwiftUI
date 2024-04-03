//
//  ContentView.swift
//  TVShow
//
//  Created by Ali Syed on 03/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = TVShowViewModel()
    
    var body: some View {
        VStack {
            
            Text("\(vm.tvShowDetail.originalName ?? "")")
            
        }.task {
            
            await vm.getEpisodeDetails(seriesID: 62852, seasonNumber: 1, episodeNumber: 1)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
