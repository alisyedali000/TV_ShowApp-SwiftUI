//
//  TVShowViewModel.swift
//  TVShow
//
//  Created by Ali Syed on 03/04/2024.
//

import Foundation

class TVShowViewModel : ObservableObject {
    
    @Published var tvShowDetail = TVShowDetailModel()

}

extension TVShowViewModel : NetworkManagerService {
    
    @MainActor func getDetail(seriesID : Int) async {
        
//        self.showLoader = true
        let endPoint : TVShowEndpoint = .getDetails(seriesID: seriesID)
        let request = await sendRequest(endpoint: endPoint, responseModel: TVShowDetailModel.self)
//        self.showLoader = false
        switch request {
            
        case .success(let data):
            
//            debugPrint(data.message ?? "")
//            debugPrint(data.data as Any)
            
            self.tvShowDetail = data

        case .failure(let error):
            
            debugPrint(error.customMessage)

            
        }
        
        
    }
    
    
    @MainActor func getSeasonDetails(seriesID : Int, seasonNumber : Int) async {
        
//        self.showLoader = true
        let endPoint : TVShowEndpoint = .getSeasonDetails(seriesID: seriesID, seasonNumber: seasonNumber)
        let request = await sendRequest(endpoint: endPoint, responseModel: TVShowDetailModel.self)
//        self.showLoader = false
        switch request {
            
        case .success(let data):
            
//            debugPrint(data.message ?? "")
//            debugPrint(data.data as Any)
            
            debugPrint(data)

        case .failure(let error):
            
            debugPrint(error.customMessage)

            
        }
        
        
    }
    
    @MainActor func getEpisodeDetails(seriesID : Int, seasonNumber : Int, episodeNumber : Int) async {
        
//        self.showLoader = true
        let endPoint : TVShowEndpoint = .getEpisodeDetails(seriesID: seriesID, seasonNumber: seasonNumber, episodeNumber: episodeNumber)
        let request = await sendRequest(endpoint: endPoint, responseModel: TVShowDetailModel.self)
//        self.showLoader = false
        switch request {
            
        case .success(let data):
            
//            debugPrint(data.message ?? "")
//            debugPrint(data.data as Any)
            
            debugPrint(data)

        case .failure(let error):
            
            debugPrint(error.customMessage)

            
        }
        
        
    }
    
}
