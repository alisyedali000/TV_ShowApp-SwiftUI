//
//  SeasonsDetailView.swift
//  TVShow
//
//  Created by Ali Syed on 05/04/2024.
//

import SwiftUI

struct SeasonsDetailView: View {
    
    @StateObject var vm = TVShowViewModel()
    @Binding var tvShow : TVShowDetailModel
    
    @State private var selectedSeason: Int = 1
    
    var body: some View {
        VStack{
            
            screenView()
                .addBackground
            
        }
        //            .task{
        //
        //
        //
        //                await vm.getSeasonDetails(seriesID: tvShow.id ?? 0, seasonNumber: selectedSeason)
        //        }
        
        .onChange(of: tvShow.seasons) {
            Task{
                
                self.selectedSeason = tvShow.seasons?.first?.seasonNumber ?? 0
                
                await vm.getSeasonDetails(seriesID: tvShow.id ?? 0, seasonNumber: selectedSeason)
                
            }
        }
        
        .onChange(of: selectedSeason) {
            Task{
                
                await vm.getSeasonDetails(seriesID: tvShow.id ?? 0, seasonNumber: selectedSeason)
            }
        }
        // These onChange modifier are only used beacause the tvShow is passed as binding and it takes some time to retrive the data and onAppear method is instantly called when view is presented so with the initial hit the default value (0) is passed with as tvShowID, which is an invalid ID and no data is retrieved.
        
        // I could also pass the showID from previous view as an alternative to this
        
    }
}

extension SeasonsDetailView{
    
    func screenView() -> some View {
        
        VStack{
            
            totalSeasonsBar
            
            episodeList
            
        }
    }
}

extension SeasonsDetailView {
    
    var totalSeasonsBar: some View {
        
        let seasons = tvShow.seasons ?? []
        
        return ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 0) {
                
                ForEach(seasons, id: \.self) { season in
                    
                    seasonNumberCell(seasonNumber: season.seasonNumber ?? 0)
                        .onTapGesture {
                            
                            withAnimation {
                                
                                selectedSeason = season.seasonNumber ?? 0
                            }
                            
                        }
                    
                    if season != seasons.last {
                        
                        verticalDivider
                            .offset(y: -6)
                        
                    }
                }
            }
        }
    }
    
    var episodeList: some View{
        
        ZStack{
            // No ScrollView or list is needed because scrollview is used in parentView
            VStack{
                
                ForEach(vm.seasonDetail.episodes ?? [], id: \.self) { episode in
                    
                    EpisodeCell(episode: episode)
                    
                }
            }
            
            LoaderView(isLoading: $vm.showLoader)
        }
    }
    
    
    func seasonNumberCell(seasonNumber: Int) -> some View{
        
        VStack(spacing: 10){
            
            Text("Season \(seasonNumber)")
                .foregroundStyle(selectedSeason == seasonNumber ? Color.white : Color.gray)
                .font(.system(size: 16, weight: selectedSeason == seasonNumber ? .semibold : .regular))
                .padding(.horizontal)
                .transition(.scale)
            
            Rectangle()
                .frame(height: 3)
                .foregroundStyle(selectedSeason == seasonNumber ? Color.white : Color.black)
            
        }
    }
    
    
    var verticalDivider : some View{
        
        Rectangle()
            .frame(width: 2, height: 15)
            .foregroundStyle(Color.gray)
        
        
    }
}


#Preview {
    SeasonsDetailView(tvShow: .constant(dummyTVShowDetail))
}
