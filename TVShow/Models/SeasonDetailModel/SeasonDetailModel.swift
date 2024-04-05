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
    
    
    init(id: String?, airDate: String?, episodes: [EpisodeDetailModel]?, name: String?, overview: String?, welcomeID: Int?, posterPath: String?, seasonNumber: Int?, voteAverage: Double?) {
        self.id = id
        self.airDate = airDate
        self.episodes = episodes
        self.name = name
        self.overview = overview
        self.welcomeID = welcomeID
        self.posterPath = posterPath
        self.seasonNumber = seasonNumber
        self.voteAverage = voteAverage
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


let dummySeason = SeasonDetailModel(
    id: "1",
    airDate: "2023-01-01",
    episodes: [
        dummyEpisode
        // Add more episodes if needed
    ],
    name: "Season 1",
    overview: "Overview of Season 1",
    welcomeID: 1,
    posterPath: "/dummyPosterPath.jpg",
    seasonNumber: 1,
    voteAverage: 8.0
)
