//
//  Track.swift
//  Plugin
//
//  Created by Matias Roldan on 25/07/2023.
//

import Foundation

struct Track: Codable {
    var audio: String
    var cover: String
    var title: String
    var totalDurationMs: Double
}
