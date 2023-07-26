//
//  ReporitoryProtocol.swift
//  Plugin
//
//  Created by Matias Roldan on 25/07/2023.
//

import Foundation

protocol RepositoryProtocol {
    func getTracks(onSuccess: @escaping TrackListClosure, onError: @escaping ErrorClosure)
}
