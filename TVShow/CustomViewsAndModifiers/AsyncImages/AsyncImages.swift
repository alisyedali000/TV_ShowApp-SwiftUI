//
//  AsyncImages.swift
//  TVShow
//
//  Created by Ali Syed on 04/04/2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct MainPosterImage: View {
    let url: String
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height * 0.40
    var body: some View {

        WebImage(url: URL(string: AppUrl.IMAGEURL + (url))!)
            .resizable()
            .placeholder(Image(""))
            .indicator(.activity)
            .scaledToFill()
            .frame(width: width, height: height)
            .clipped()
            .contentShape(Rectangle())
            .overlay(
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color.white.opacity(0.00),
                        Color.black.opacity(1.0)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .frame(height: height * 0.40)
                .padding(.top, height * 0.60)
            )
//            .ignoresSafeArea()
          

    }
}


struct EpisodePosterImage: View {
    let url: String
    var width : CGFloat = 150
    var height : CGFloat = 90
    var body: some View {

        WebImage(url: URL(string: AppUrl.IMAGEURL + (url))!)
            .resizable()
            .placeholder(Image("placeholder.png"))
            .indicator(.activity)
            .scaledToFill()
            .frame(width: width, height: height)
            .clipped()
            .contentShape(Rectangle())
            .overlay(
                
               Rectangle()
                .foregroundStyle(Color.black.opacity(0.5))
                
                .overlay(
                
                Circle()
                    .frame(height: 50)
                    .foregroundStyle(Color.black.opacity(0.4))
                    .overlay(
                        
                        Image(systemName: "play")
                            .foregroundStyle(Color.white)
                    )
                )
            )
//            .ignoresSafeArea()
          

    }
}
