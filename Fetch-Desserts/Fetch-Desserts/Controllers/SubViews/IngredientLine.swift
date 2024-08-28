//
//  IngredientLine.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/28/24.
//

import SwiftUI

struct IngredientLine: View {
    var ingredient: String?
    var measure: String
    var body: some View {
        HStack {
            Text(("\u{2022}"))
                .bold()
            Text(ingredient!)
            Spacer()
            Text(measure)
        }
        .padding(.horizontal, 5)
    }
}

#Preview {
    IngredientLine(ingredient: "Cocoa", measure: "12 cups")
}
