//
//  EpisodeDetailModel.swift
//  TVShow
//
//  Created by Ali Syed on 04/04/2024.
//

import Foundation
// MARK: - Episode
struct EpisodeDetailModel: Codable, Hashable {
    let airDate: String?
    let episodeNumber: Int?
    let episodeType: String?
    let id: Int?
    let name, overview, productionCode: String?
    let runtime, seasonNumber, showID: Int?
    let stillPath: String?
    let voteAverage: Double?
    let voteCount: Int?
    let crew, guestStars: [Crew]?

    enum CodingKeys: String, CodingKey {
        case airDate = "air_date"
        case episodeNumber = "episode_number"
        case episodeType = "episode_type"
        case id, name, overview
        case productionCode = "production_code"
        case runtime
        case seasonNumber = "season_number"
        case showID = "show_id"
        case stillPath = "still_path"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case crew
        case guestStars = "guest_stars"
    }
    
    init() {
        self.airDate = nil
        self.episodeNumber = nil
        self.episodeType = nil
        self.id = nil
        self.name = nil
        self.overview = nil
        self.productionCode = nil
        self.runtime = nil
        self.seasonNumber = nil
        self.showID = nil 
        self.stillPath = nil
        self.voteAverage = nil
        self.voteCount = nil
        self.crew = nil
        self.guestStars = nil
    }
    
}

// MARK: - Crew
struct Crew: Codable, Hashable {
    let job: String?
    let department: String?
    let creditID: String
    let adult: Bool
    let gender, id: Int
    let knownForDepartment: String
    let name, originalName: String
    let popularity: Double
    let profilePath: String?
    let character: String?
    let order: Int?

    enum CodingKeys: String, CodingKey {
        case job, department
        case creditID = "credit_id"
        case adult, gender, id
        case knownForDepartment = "known_for_department"
        case name
        case originalName = "original_name"
        case popularity
        case profilePath = "profile_path"
        case character, order
    }
    
}
