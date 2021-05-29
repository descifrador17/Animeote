//
//  NetworkingApi.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 29/05/21.
//

import Foundation

protocol NetworkingService{
    @discardableResult func getRandomAnimeQuote(completionHandler : @escaping (QuoteServerModel) -> ()) -> URLSessionDataTask
}

final class NetworkingApi: NetworkingService{
    let session = URLSession.shared
    
    @discardableResult
    func getRandomAnimeQuote(completionHandler: @escaping (QuoteServerModel) -> ()) -> URLSessionDataTask {
        let request = URLRequest(url: URL(string: "https://animechan.vercel.app/api/random")!)
        let task = session.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let error = error{
                    print("Error getting data \(error)")
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse , (200...299).contains(httpResponse.statusCode) else{
                    print("Unfavourable Response")
                    return
                }
                
                guard let data = data ,
                      let result = try? JSONDecoder().decode(QuoteServerModel.self, from: data) else{
                    print("Error parsing JSON")
                    return
                }
                completionHandler(result)
            }
        }
        task.resume()
        return task
    }
}
