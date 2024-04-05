//
//  EpisodeCell.swift
//  TVShow
//
//  Created by Ali Syed on 05/04/2024.
//

import SwiftUI

struct EpisodeCell: View {
    
    var episode : EpisodeDetailModel
    
    var body: some View {
        screenView().background(
        
            Rectangle()
                .foregroundStyle(Color.gray.opacity(0.3))
        )
            .addBackground
    }
}


extension EpisodeCell {
    
    func screenView() -> some View {
        
        HStack(spacing : 15){
            
            Image(systemName: "chevron.right")
                .foregroundStyle(Color.white)
            
            EpisodePosterImage(url: episode.stillPath ?? "")
            
            episodeNameAndNumber
            
            Spacer()
            
            Button{
                
            }label: {
                
                Image(systemName: "arrow.down.circle")
                    .foregroundStyle(Color.white)
                
            }
            
        }.padding(.horizontal,10)
        .frame(height: 140)
        
    }
    
    var episodeNameAndNumber : some View{
        
        Text("E\(episode.episodeNumber ?? 0) - ")
            .foregroundStyle(Color.white)
        +
        
        Text(episode.name ?? "")
            .foregroundStyle(Color.white)
        
    }
    
}



#Preview {
    
    EpisodeCell(episode: dummyEpisode)
    
}
