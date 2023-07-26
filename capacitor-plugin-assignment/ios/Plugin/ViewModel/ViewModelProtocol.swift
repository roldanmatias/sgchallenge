//
//  ViewModelProtocol.swift
//  Plugin
//
//  Created by Matias Roldan on 25/07/2023.
//

import Foundation

protocol ViewModelProtocol {
    func getTracks(onSuccess: @escaping TrackListClosure, onError: @escaping ErrorClosure)
}
