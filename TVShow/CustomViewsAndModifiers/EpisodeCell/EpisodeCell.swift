//
//  EpisodeCell.swift
//  TVShow
//
//  Created by Ali Syed on 05/04/2024.
//

import SwiftUI

struct EpisodeCell: View {
    
    @State var playVideo = false
    @State var videoUrl = "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4"
    var episode : EpisodeDetailModel
    
    
    var body: some View {
        
        screenView().background(
        
            Rectangle()
                .foregroundStyle(Color.gray.opacity(0.3))
        )
            .addBackground
        
            .fullScreenCover(isPresented: $playVideo, content: {
                    
                    VideoPlayerView(videoUrl: videoUrl){
                        
                        self.playVideo.toggle()
                        
                    }
            })
    }
}


extension EpisodeCell {
    
    func screenView() -> some View {
        
        HStack(spacing : 15){
            
            Image(systemName: "chevron.right")
                .foregroundStyle(Color.white)
            
            EpisodePosterImage(url: episode.stillPath ?? "").onTapGesture {
                
                self.playVideo.toggle()
                
            }
            
            episodeNameAndNumber
            
            Spacer()
            
            downloadButton

            
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
    
    var downloadButton : some View {
        
        Button{
            
        }label: {
            
            Image(systemName: "arrow.down.circle")
                .foregroundStyle(Color.white)
            
        }
        
    }
    
}



#Preview {
    
    EpisodeCell(episode: dummyEpisode)
    
}
