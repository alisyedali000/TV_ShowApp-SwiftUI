//
//  SeasonDetailModel.swift
//  TVShow
//
//  Created by Ali Syed on 04/04/2024.
//

import Foundation

// MARK: - Welcome
struct SeasonDetailModel: Codable, Hashable {
    let id, airDate: String?
    let episodes: [EpisodeDetailModel]?
    let name, overview: String?
    let welcomeID: Int?
    let posterPath: String?
    let seasonNumber: Int?
    let voteAverage: Double?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case airDate = "air_date"
        case episodes, name, overview
        case welcomeID = "id"
        case posterPath = "poster_path"
        case seasonNumber = "season_number"
        case voteAverage = "vote_average"
    }
    
    init() {
        self.id = nil
        self.airDate = nil
        self.episodes = nil
        self.name = nil
        self.overview = nil
        self.welcomeID = nil
        self.posterPath = nil
        self.seasonNumber = nil
        self.voteAverage = nil
    }
}



//enum Department: String, Codable {
//    case acting = "Acting"
//    case art = "Art"
//    case camera = "Camera"
//    case costumeMakeUp = "Costume & Make-Up"
//    case crew = "Crew"
//    case directing = "Directing"
//    case editing = "Editing"
//    case production = "Production"
//    case writing = "Writing"
//}

//enum EpisodeType: String, Codable {
//    case finale = "finale"
//    case standard = "standard"
//}
