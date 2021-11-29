//
//  ArticlesResources.swift
//  NYTPopularArticles
//
//  Created by kalyani on 29/11/21.
//

import Foundation

struct ArticlesResource
{
    func getArticles(duration: String, completion: @escaping(_ error: String?, _ result : Articles?) -> Void)
    {
        let httpUtility = HttpUtility()

        let articlesEndpoint = "\(ApiEndpoints.mostpopular_articles_url)\(duration).json?api-key=\(ApiEndpoints.api_key)"

        let requestUrl = URL(string:articlesEndpoint)!

        httpUtility.getApiData(requestUrl: requestUrl, resultType: Articles.self) { (error, articlesApiResponse) in
            _ = completion(error , articlesApiResponse)
        }
    }
}
