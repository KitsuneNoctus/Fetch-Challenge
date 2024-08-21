//
//  FoodItemDetailView.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/21/24.
//

import SwiftUI

struct MealDetailView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                AsyncImage(url: URL(string: "https://www.themealdb.com/images/media/meals/sywswr1511383814.jpg")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                } placeholder: {
                    ProgressView()
                }
                HStack {
                    Text("Tags")
                    Spacer()
                    Text("Area")
                }
                Text("Video")
                Text("Ingredients")
                Text("Instructions")
                Text("Source")
            }
        }
        .navigationTitle("Banana Pancakes")
    }
}

#Preview {
    MealDetailView()
}
