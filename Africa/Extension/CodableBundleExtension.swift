//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Pavel Bohomolnyi on 16/06/2022.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [CoverImage] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
    }
}
