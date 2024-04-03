//
//  GenericResponse.swift
//  TVShow
//
//  Created by Ali Syed on 03/04/2024.
//

import Foundation

struct GenericResponse: Codable {

    var message: String?
    var status: Bool?

}

struct GenericResponseModel<T: Codable>: Codable {

    var message: String?
    var status: Bool?
    var data: T?


}
