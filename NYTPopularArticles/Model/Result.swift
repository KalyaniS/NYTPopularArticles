//
//  Result.swift
//  Created on November 28, 2021

import Foundation

typealias PopularArticles = [Result]

struct Result : Decodable {

        let abstractField : String?
        let adxKeywords : String?
        let assetId : Int?
        let byline : String?
       // let column : AnyObject?
        let desFacet : [String]?
        let etaId : Int?
      //  let geoFacet : [AnyObject]?
        let id : Int?
        let media : [Media]?
        let nytdsection : String?
      //  let orgFacet : [AnyObject]?
      //  let perFacet : [AnyObject]?
        let publishedDate : String?
        let section : String?
        let source : String?
        let subsection : String?
        let title : String?
        let type : String?
        let updated : String?
        let uri : String?
        let url : String?

        enum CodingKeys: String, CodingKey {
                case abstractField = "abstract"
                case adxKeywords = "adx_keywords"
                case assetId = "asset_id"
                case byline = "byline"
                //case column = "column"
                case desFacet = "des_facet"
                case etaId = "eta_id"
              //  case geoFacet = "geo_facet"
                case id = "id"
                case media = "media"
                case nytdsection = "nytdsection"
              //  case orgFacet = "org_facet"
              //  case perFacet = "per_facet"
                case publishedDate = "published_date"
                case section = "section"
                case source = "source"
                case subsection = "subsection"
                case title = "title"
                case type = "type"
                case updated = "updated"
                case uri = "uri"
                case url = "url"
        }
    
}
