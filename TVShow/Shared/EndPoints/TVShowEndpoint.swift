//
//  TVShowEndpoint.swift
//  TVShow
//
//  Created by Ali Syed on 03/04/2024.
//

import Foundation

let apiKey = "ecef14eac236a5d4ec6ac3a4a4761e8f"

enum TVShowEndpoint{
    
    case getDetails(seriesID : Int)
    
    case getSeasonDetails(seriesID : Int, seasonNumber : Int)
    
    case getEpisodeDetails(seriesID : Int, seasonNumber : Int, episodeNumber : Int)
    
    
}

extension TVShowEndpoint: Endpoint{
    
    var path: String {
        
        switch self{
            
        case .getDetails(let seriesID):
            return "\(AppUrl.APIPATCH)/tv/\(seriesID)"
            
        case .getSeasonDetails(let seriesID, let seasonNumber):
            return "\(AppUrl.APIPATCH)/tv/\(seriesID)/season/\(seasonNumber)"
            
            
        case .getEpisodeDetails(let seriesID, let seasonNumber, let episodeNumber):
            return "\(AppUrl.APIPATCH)/tv/\(seriesID)/season/\(seasonNumber)/episode/\(episodeNumber)"

        }
    }
    
    var method: RequestMethod {
        switch self{
            
        case .getDetails:
            return .get
        
        case .getSeasonDetails:
            return .get
            
        case .getEpisodeDetails:
            return .get
            
        }
        
        
    }
    
    
    var body: [String : Any?]?{

        switch self{
            
        case .getDetails:
            return nil
            
        case .getSeasonDetails:
            return nil
            
        case .getEpisodeDetails:
            return nil

        }
    }
    
    
}
