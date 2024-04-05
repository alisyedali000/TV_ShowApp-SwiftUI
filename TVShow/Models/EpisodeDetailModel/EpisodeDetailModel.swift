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
    
    init(airDate: String?, episodeNumber: Int?, episodeType: String?, id: Int?, name: String?, overview: String?, productionCode: String?, runtime: Int?, seasonNumber: Int?, showID: Int?, stillPath: String?, voteAverage: Double?, voteCount: Int?, crew: [Crew]?, guestStars: [Crew]?) {
        self.airDate = airDate
        self.episodeNumber = episodeNumber
        self.episodeType = episodeType
        self.id = id
        self.name = name
        self.overview = overview
        self.productionCode = productionCode
        self.runtime = runtime
        self.seasonNumber = seasonNumber
        self.showID = showID
        self.stillPath = stillPath
        self.voteAverage = voteAverage
        self.voteCount = voteCount
        self.crew = crew
        self.guestStars = guestStars
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


let dummyEpisode = EpisodeDetailModel(
    airDate: "2023-01-01",
    episodeNumber: 1,
    episodeType: "Regular",
    id: 1,
    name: "Episode 1",
    overview: "Overview of Episode 1",
    productionCode: "ABC123",
    runtime: 45,
    seasonNumber: 1,
    showID: 123456,
    stillPath: "/dummyStillPath.jpg",
    voteAverage: 8.0,
    voteCount: 100,
    crew: [
        Crew(job: "Director", department: "Directing", creditID: "123", adult: false, gender: 2, id: 1, knownForDepartment: "Directing", name: "Director Name", originalName: "Original Director Name", popularity: 7.5, profilePath: "/dummyDirectorProfilePath.jpg", character: nil, order: nil)
        // Add more crew members if needed
    ],
    guestStars: [
        Crew(job: "Actor", department: "Acting", creditID: "456", adult: false, gender: 2, id: 2, knownForDepartment: "Acting", name: "Actor Name", originalName: "Original Actor Name", popularity: 8.0, profilePath: "/dummyActorProfilePath.jpg", character: "Character Name", order: 1)
        // Add more guest stars if needed
    ]
)
