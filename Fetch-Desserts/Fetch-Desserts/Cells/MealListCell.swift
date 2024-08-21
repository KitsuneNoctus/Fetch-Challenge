//
//  FoodItemListCell.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/21/24.
//

import SwiftUI

struct MealListCell: View {
    
//    var
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "https://www.themealdb.com/images/media/meals/rpvptu1511641092.jpg")) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            Text("Blackberry Fool")
                .font(.title)
                .bold()
        }
        .padding()
    }
}

#Preview {
    MealListCell()
}
