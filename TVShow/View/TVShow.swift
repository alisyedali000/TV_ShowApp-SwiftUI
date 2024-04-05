//
//  TVShow.swift
//  TVShow
//
//  Created by Ali Syed on 03/04/2024.
//

import SwiftUI

struct TVShow: View {
    
    @StateObject var vm = TVShowViewModel()
    @State private var isExpanded = false
    
    var body: some View {
        ZStack{
            
            screenView()
            LoaderView(isLoading: $vm.showLoader)
            
        }.addBackground
        
        .task {
            
            await vm.getDetail(seriesID: 62852)
            
        }
    }
    
}


//MARK: Main Screen
extension TVShow{
    
    func screenView() -> some View{
        
        VStack{
            
            ScrollView(showsIndicators : false){
                
                VStack{
                    MainPosterImage(url: vm.tvShowDetail.backdropPath ?? "")
                    
                    VStack(alignment : .leading, spacing: 10){
                        
                        seriesName
                        
                        totalSeasons
                        
                        playButtons
                        
                        ExpandableText(text: vm.tvShowDetail.overview ?? "")
                        
                        circularButtons
                        
             
                        
                    }.padding(.horizontal)
                    
                    
                    SeasonsDetailView(tvShow: $vm.tvShowDetail)
                        .padding(.vertical)
                    
                }
                
            }.ignoresSafeArea(.all)
            
        }
        
    }
    
}


//MARK: SubViews
extension TVShow{
    
    var seriesName : some View{
        
        Text("\(vm.tvShowDetail.name ?? "")")
            .font(.system(size: 35,weight: .medium))
            .foregroundStyle(Color.white)
        
    }
    
    var totalSeasons : some View{
        
        HStack{
            
            Text("\(vm.tvShowDetail.firstAirDate ?? "") |")
                .font(.system(size: 20))
                .foregroundStyle(Color.gray)
            
            Text("\(vm.tvShowDetail.numberOfSeasons ?? 0) Seasons |")
                .font(.system(size: 20))
                .foregroundStyle(Color.gray)
            
            Text("\(vm.tvShowDetail.type ?? "")")
                .font(.system(size: 20))
                .foregroundStyle(Color.gray)
            
        }
        
    }
    
    var playButtons : some View{
        
        HStack(spacing : 20){
            
            RectangularPlayButtons(title: "Play", bgColor: Color.orange, image: Image(systemName: "play.fill")) {
                
            }
            
            RectangularPlayButtons(title: "Trailer", bgColor: Color.gray.opacity(0.5), image: Image(systemName: "play.rectangle")) {
                
            }

            
        }
        
    }
    
    var circularButtons : some View{
        
        HStack(spacing : 20){
            
            CircularButtonWithSubLine(subLine: "Watchlist", image: Image(systemName: "plus"))
       
            
            CircularButtonWithSubLine(subLine: "I like it", image: Image(systemName: "hand.thumbsup"))
            
            
            CircularButtonWithSubLine(subLine: "I don't like", image: Image(systemName: "hand.thumbsdown"))
            
            
        }
        
    }
    
//    var overview : some View{
//        
//        let overview = (vm.tvShowDetail.overview ?? "")      .replacingOccurrences(of: "\\s+", with: " ", options: .regularExpression)
//            
//     
//        
//       return Text(overview)
//            .font(.system(size: 16))
//            .foregroundStyle(Color.white)
//            .multilineTextAlignment(.leading)
//            
//        
//    }
    
}


#Preview {
    TVShow()
}
