//
//  Repository.swift
//  Plugin
//
//  Created by Matias Roldan on 25/07/2023.
//

import Foundation

final class Repository: RepositoryProtocol {
    
    private var url: URL
    
    init(url: URL) {
        self.url = url
    }
    
    func getTracks(onSuccess: @escaping TrackListClosure, onError: @escaping ErrorClosure) {
        let urlRequest = URLRequest(url: url, cachePolicy: .returnCacheDataElseLoad)
        
        URLSession.shared.dataTask(with: urlRequest) { [weak self] data, response, error in
            guard let self = self, let data = data else { 
                onError(NSError()) 
                return
            }
            
            do {
                let trackList = try self.decodeJson(data: data)
                onSuccess(trackList)
            } catch let error {
                onError(error)
            }
        }.resume()
    }
    
    func decodeJson(data: Data) throws -> TrackList {
        return try JSONDecoder().decode(TrackList.self, from: data)
    }
}
