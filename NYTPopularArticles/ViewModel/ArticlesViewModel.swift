//
//  ArticlesViewModel.swift
//  NYTPopularArticles
//
//  Created by kalyani on 28/11/21.
//

import Foundation
import UIKit

class ArticlesViewModel: NSObject {
        
    var popular_articles = PopularArticles()
    
    func getArticles(duration: String, completion: @escaping(_ error: String?, _ result: Articles?)-> Void)
    {
        let articleResource = ArticlesResource()

        articleResource.getArticles(duration: duration) { (error, articlesAPIResponse) in
            if let result = (articlesAPIResponse?.results){
                self.popular_articles = result
            }
            _ = completion(error , articlesAPIResponse)
        }
        
    }
    
}
