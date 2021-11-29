//
//  HttpUtility.swift
//  NYTPopularArticles
//
//  Created by kalyani on 29/11/21.
//

import Foundation

struct HttpUtility
{
    func getApiData<T:Decodable>(requestUrl: URL, resultType: T.Type, completionHandler:@escaping(_ error: String?, _ result: T?)-> Void)
    {
        URLSession.shared.dataTask(with: requestUrl) { (responseData, httpUrlResponse, error) in
            if(error == nil && responseData != nil && responseData?.count != 0)
            {
                let decoder = JSONDecoder()
                do {
                    let result = try decoder.decode(T.self, from: responseData!)
                    _=completionHandler(nil, result)
                }
                catch let error{
                    debugPrint("error occured while decoding = \(error)")
                    _=completionHandler(error.localizedDescription, nil)
                }
            }else{
                _=completionHandler(error.debugDescription, nil)
            }

        }.resume()
    }

}
