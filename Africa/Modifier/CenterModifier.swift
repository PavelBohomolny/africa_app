//
//  CenterModifier.swift
//  Africa
//
//  Created by Pavel Bohomolnyi on 07/09/2022.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
