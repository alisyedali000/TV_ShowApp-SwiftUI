//
//  VideoPlayerView.swift
//  TVShow
//
//  Created by Ali Syed on 06/04/2024.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {

    @State private var player = AVPlayer()
    var videoUrl : String
    var crossButtonAction : () -> Void
   
    
    var body: some View {
        ZStack(alignment : .topLeading){
            
            VideoPlayer(player: player)
                .edgesIgnoringSafeArea(.all)
                .navigationBarBackButtonHidden()
            
            closeButton.padding(.leading)
            

        }.onAppear {
            
            let url = URL(string: videoUrl)!
            
            player = AVPlayer(url: url)
            
            player.play()

            
        }
            .onDisappear {
                
                player.pause()
                
            }
        
       

    }
}

extension VideoPlayerView {
    
    var closeButton : some View {
        
        Button {
            
            crossButtonAction()
            
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color.gray.opacity(0.3))
                .frame(width: 25,height: 25)
                .overlay(
            
            Image(systemName: "xmark")
                .resizable()
                .frame(width: 8, height: 8)
                .foregroundStyle(Color.white)
            
            )
            
        }
        
    }
    
}

#Preview {
    VideoPlayerView(videoUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4"){
        
    }
}
