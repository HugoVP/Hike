//
//  Untitled.swift
//  Hike
//
//  Created by Hugo Vázquez Paleo on 07/12/24.
//

import SwiftUI

extension View {
    func themeGradientButton() -> some View {
        self.modifier(ThemeGradientButtonModifier())
    }
}

struct ThemeGradientButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(LinearGradient(
                colors: [
                    .customGrayLight,
                    .customGrayMedium
                ],
                startPoint: .top,
                endPoint: .bottom
            ))
            .cornerRadius(40)
    }
}

