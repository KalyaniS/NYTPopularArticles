//
//  Articles.swift
//  Created on November 28, 2021

import Foundation

struct Articles : Decodable {

        let copyright : String?
        let numResults : Int?
        let results : [Result]?
        let status : String?

        enum CodingKeys: String, CodingKey {
                case copyright = "copyright"
                case numResults = "num_results"
                case results = "results"
                case status = "status"
        }
    
}
