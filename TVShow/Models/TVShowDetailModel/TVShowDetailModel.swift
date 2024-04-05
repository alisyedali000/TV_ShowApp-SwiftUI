//
//  TVShowDetailModel.swift
//  TVShow
//
//  Created by Ali Syed on 03/04/2024.
//

import Foundation

// MARK: - Welcome
struct TVShowDetailModel: Codable, Hashable {
    
    let adult: Bool?
    let backdropPath: String?
    let createdBy: [CreatedBy]?
    let episodeRunTime: [Int]?
    let firstAirDate: String?
    let genres: [Genre]?
    let homepage: String?
    let id: Int?
    let inProduction: Bool?
    let languages: [String]?
    let lastAirDate: String?
    let lastEpisodeToAir: LastEpisodeToAir?
    let name: String?
    let nextEpisodeToAir: JSONNull?
    let networks: [Network]?
    let numberOfEpisodes, numberOfSeasons: Int?
    let originCountry: [String]?
    let originalLanguage, originalName, overview: String?
    let popularity: Double?
    let posterPath: String?
    let productionCompanies: [Network]?
    let productionCountries: [ProductionCountry]?
    let seasons: [Season]?
    let spokenLanguages: [SpokenLanguage]?
    let status, tagline, type: String?
    let voteAverage: Double?
    let voteCount: Int?

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case createdBy = "created_by"
        case episodeRunTime = "episode_run_time"
        case firstAirDate = "first_air_date"
        case genres, homepage, id
        case inProduction = "in_production"
        case languages
        case lastAirDate = "last_air_date"
        case lastEpisodeToAir = "last_episode_to_air"
        case name
        case nextEpisodeToAir = "next_episode_to_air"
        case networks
        case numberOfEpisodes = "number_of_episodes"
        case numberOfSeasons = "number_of_seasons"
        case originCountry = "origin_country"
        case originalLanguage = "original_language"
        case originalName = "original_name"
        case overview, popularity
        case posterPath = "poster_path"
        case productionCompanies = "production_companies"
        case productionCountries = "production_countries"
        case seasons
        case spokenLanguages = "spoken_languages"
        case status, tagline, type
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
    
    init(adult: Bool?, backdropPath: String?, createdBy: [CreatedBy]?, episodeRunTime: [Int]?, firstAirDate: String?, genres: [Genre]?, homepage: String?, id: Int?, inProduction: Bool?, languages: [String]?, lastAirDate: String?, lastEpisodeToAir: LastEpisodeToAir?, name: String?, nextEpisodeToAir: JSONNull?, networks: [Network]?, numberOfEpisodes: Int?, numberOfSeasons: Int?, originCountry: [String]?, originalLanguage: String?, originalName: String?, overview: String?, popularity: Double?, posterPath: String?, productionCompanies: [Network]?, productionCountries: [ProductionCountry]?, seasons: [Season]?, spokenLanguages: [SpokenLanguage]?, status: String?, tagline: String?, type: String?, voteAverage: Double?, voteCount: Int?) {
        self.adult = adult
        self.backdropPath = backdropPath
        self.createdBy = createdBy
        self.episodeRunTime = episodeRunTime
        self.firstAirDate = firstAirDate
        self.genres = genres
        self.homepage = homepage
        self.id = id
        self.inProduction = inProduction
        self.languages = languages
        self.lastAirDate = lastAirDate
        self.lastEpisodeToAir = lastEpisodeToAir
        self.name = name
        self.nextEpisodeToAir = nextEpisodeToAir
        self.networks = networks
        self.numberOfEpisodes = numberOfEpisodes
        self.numberOfSeasons = numberOfSeasons
        self.originCountry = originCountry
        self.originalLanguage = originalLanguage
        self.originalName = originalName
        self.overview = overview
        self.popularity = popularity
        self.posterPath = posterPath
        self.productionCompanies = productionCompanies
        self.productionCountries = productionCountries
        self.seasons = seasons
        self.spokenLanguages = spokenLanguages
        self.status = status
        self.tagline = tagline
        self.type = type
        self.voteAverage = voteAverage
        self.voteCount = voteCount
    }
    
    init() {
        self.adult = nil
        self.backdropPath = nil
        self.createdBy = nil
        self.episodeRunTime = nil
        self.firstAirDate = nil
        self.genres = nil
        self.homepage = nil
        self.id = nil
        self.inProduction = nil
        self.languages = nil
        self.lastAirDate = nil
        self.lastEpisodeToAir = nil
        self.name = nil
        self.nextEpisodeToAir = nil
        self.networks = nil
        self.numberOfEpisodes = nil
        self.numberOfSeasons = nil
        self.originCountry = nil
        self.originalLanguage = nil
        self.originalName = nil
        self.overview = nil
        self.popularity = nil
        self.posterPath = nil
        self.productionCompanies = nil
        self.productionCountries = nil
        self.seasons = nil
        self.spokenLanguages = nil
        self.status = nil
        self.tagline = nil
        self.type = nil
        self.voteAverage = nil
        self.voteCount = nil
    }

    
    
}


// MARK: - CreatedBy
struct CreatedBy: Codable, Hashable {
    let id: Int?
    let creditID, name: String?
    let gender: Int?
    let profilePath: String?

    enum CodingKeys: String, CodingKey {
        case id
        case creditID = "credit_id"
        case name, gender
        case profilePath = "profile_path"
    }
    
    init(id: Int?, creditID: String?, name: String?, gender: Int?, profilePath: String?) {
        self.id = id
        self.creditID = creditID
        self.name = name
        self.gender = gender
        self.profilePath = profilePath
    }
}

// MARK: - Genre
struct Genre: Codable, Hashable {
    
    let id: Int
    let name: String
    
    enum CodingKeys: String, CodingKey {
        
        case id, name
    }
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
}

// MARK: - LastEpisodeToAir
struct LastEpisodeToAir: Codable, Hashable {
    let id: Int?
    let name, overview: String?
    let voteAverage, voteCount: Int?
    let airDate: String?
    let episodeNumber: Int?
    let episodeType, productionCode: String?
    let runtime, seasonNumber, showID: Int?
    let stillPath: String?

    enum CodingKeys: String, CodingKey {
        case id, name, overview
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case airDate = "air_date"
        case episodeNumber = "episode_number"
        case episodeType = "episode_type"
        case productionCode = "production_code"
        case runtime
        case seasonNumber = "season_number"
        case showID = "show_id"
        case stillPath = "still_path"
    }
    
    init(id: Int?, name: String?, overview: String?, voteAverage: Int?, voteCount: Int?, airDate: String?, episodeNumber: Int?, episodeType: String?, productionCode: String?, runtime: Int?, seasonNumber: Int?, showID: Int?, stillPath: String?) {
        self.id = id
        self.name = name
        self.overview = overview
        self.voteAverage = voteAverage
        self.voteCount = voteCount
        self.airDate = airDate
        self.episodeNumber = episodeNumber
        self.episodeType = episodeType
        self.productionCode = productionCode
        self.runtime = runtime
        self.seasonNumber = seasonNumber
        self.showID = showID
        self.stillPath = stillPath
    }
}

// MARK: - Network
struct Network: Codable, Hashable {
    let id: Int?
    let logoPath: String?
    let name, originCountry: String?

    enum CodingKeys: String, CodingKey {
        case id
        case logoPath = "logo_path"
        case name
        case originCountry = "origin_country"
    }
    
    init(id: Int?, logoPath: String?, name: String?, originCountry: String?) {
        self.id = id
        self.logoPath = logoPath
        self.name = name
        self.originCountry = originCountry
    }
}

// MARK: - ProductionCountry
struct ProductionCountry: Codable, Hashable {
    let iso3166_1, name: String?

    enum CodingKeys: String, CodingKey {
        case iso3166_1 = "iso_3166_1"
        case name
    }
}

// MARK: - Season
struct Season: Codable, Hashable {
    let airDate: String?
    let episodeCount, id: Int?
    let name, overview, posterPath: String?
    let seasonNumber: Int?
    let voteAverage: Double?

    enum CodingKeys: String, CodingKey {
        case airDate = "air_date"
        case episodeCount = "episode_count"
        case id, name, overview
        case posterPath = "poster_path"
        case seasonNumber = "season_number"
        case voteAverage = "vote_average"
    }
    
    init(airDate: String?, episodeCount: Int?, id: Int?, name: String?, overview: String?, posterPath: String?, seasonNumber: Int?, voteAverage: Double?) {
        self.airDate = airDate
        self.episodeCount = episodeCount
        self.id = id
        self.name = name
        self.overview = overview
        self.posterPath = posterPath
        self.seasonNumber = seasonNumber
        self.voteAverage = voteAverage
    }
    
    init() {
        self.airDate = nil
        self.episodeCount = nil
        self.id = nil
        self.name = nil
        self.overview = nil
        self.posterPath = nil
        self.seasonNumber = nil
        self.voteAverage = nil
    }
}

// MARK: - SpokenLanguage
struct SpokenLanguage: Codable, Hashable {
    let englishName, iso639_1, name: String?

    enum CodingKeys: String, CodingKey {
        case englishName = "english_name"
        case iso639_1 = "iso_639_1"
        case name
    }
    
    init(englishName: String?, iso639_1: String?, name: String?) {
        self.englishName = englishName
        self.iso639_1 = iso639_1
        self.name = name
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}


let dummyTVShowDetail = TVShowDetailModel(
        adult: false,
        backdropPath: "/dummyBackdropPath.jpg",
        createdBy: [
            CreatedBy(id: 1, creditID: "123", name: "Dummy Creator", gender: 1, profilePath: "/dummyProfilePath.jpg")
            // Add more if needed
        ],
        episodeRunTime: [60, 45, 30], // Sample episode runtimes
        firstAirDate: "2022-01-01",
        genres: [
            Genre(id: 1, name: "Action"),
            Genre(id: 2, name: "Adventure")
            // Add more if needed
        ],
        homepage: "https://dummyhomepage.com",
        id: 123456, // Sample ID
        inProduction: true,
        languages: ["English", "Spanish"],
        lastAirDate: "2023-12-31",
        lastEpisodeToAir: LastEpisodeToAir(
            id: 123,
            name: "Last Episode",
            overview: "This is the last episode overview",
            voteAverage: 8,
            voteCount: 100,
            airDate: "2023-12-30",
            episodeNumber: 10,
            episodeType: "Regular",
            productionCode: "123ABC",
            runtime: 45,
            seasonNumber: 1,
            showID: 123456,
            stillPath: "/dummyStillPath.jpg"
        ),
        name: "Dummy TV Show",
        nextEpisodeToAir: JSONNull(),
        networks: [
            Network(id: 1, logoPath: "/dummyLogoPath.jpg", name: "Dummy Network", originCountry: "US")
            // Add more if needed
        ],
        numberOfEpisodes: 20,
        numberOfSeasons: 2,
        originCountry: ["US", "UK"],
        originalLanguage: "English",
        originalName: "Original Dummy TV Show",
        overview: "This is a dummy TV show overview",
        popularity: 7.5,
        posterPath: "/dummyPosterPath.jpg",
        productionCompanies: [
            Network(id: 2, logoPath: "/dummyLogoPath2.jpg", name: "Dummy Production Company", originCountry: "US")
            // Add more if needed
        ],
        productionCountries: [
            ProductionCountry(iso3166_1: "US", name: "United States"),
            ProductionCountry(iso3166_1: "UK", name: "United Kingdom")
            // Add more if needed
        ],
        seasons: [
            Season(
                airDate: "2022-01-01",
                episodeCount: 10,
                id: 1,
                name: "Season 1",
                overview: "Overview of Season 1",
                posterPath: "/dummySeasonPosterPath.jpg",
                seasonNumber: 1,
                voteAverage: 7.8
            ),
            Season(
                airDate: "2023-01-01",
                episodeCount: 10,
                id: 2,
                name: "Season 2",
                overview: "Overview of Season 2",
                posterPath: "/dummySeasonPosterPath2.jpg",
                seasonNumber: 2,
                voteAverage: 8.0
            )
            // Add more if needed
        ],
        spokenLanguages: [
            SpokenLanguage(englishName: "English", iso639_1: "en", name: "English"),
            SpokenLanguage(englishName: "Spanish", iso639_1: "es", name: "Spanish")
            // Add more if needed
        ],
        status: "Returning Series",
        tagline: "Dummy TV Show Tagline",
        type: "Scripted",
        voteAverage: 7.9,
        voteCount: 500
    )



