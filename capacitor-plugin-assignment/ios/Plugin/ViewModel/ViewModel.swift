//
//  ViewModel.swift
//  Plugin
//
//  Created by Matias Roldan on 25/07/2023.
//

import Foundation

final class ViewModel: ViewModelProtocol {
    
    private var repository: RepositoryProtocol
    
    init(repository: RepositoryProtocol) {
        self.repository = repository
    }
    
    func getTracks(onSuccess: @escaping TrackListClosure, onError: @escaping ErrorClosure) {
        repository.getTracks(onSuccess: onSuccess, onError: onError)
    }
}
