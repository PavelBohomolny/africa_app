//
//  VideoModel.swift
//  Africa
//
//  Created by Pavel Bohomolnyi on 04/07/2022.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
