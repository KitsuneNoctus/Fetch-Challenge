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
                    Text("Tags: \(exampleMealDetailModel.strTags)")
                    Spacer()
                    Text(exampleMealDetailModel.strArea)
                }
                .padding(5)
                Text("Video")
                    .padding(5)
                Text("Ingredients")
                    .font(.title3)
                    .padding(5)
                
                HStack {
                    Text(("\u{2022}"))
                    Text(exampleMealDetailModel.strMeasure1!)
                    Text(exampleMealDetailModel.strIngredient1!)
                }
                .padding(.horizontal, 5)
                HStack {
                    Text(("\u{2022}"))
                    Text(exampleMealDetailModel.strMeasure2!)
                    Text(exampleMealDetailModel.strIngredient2!)
                }
                .padding(.horizontal, 5)
                HStack {
                    Text(("\u{2022}"))
                    Text(exampleMealDetailModel.strMeasure3!)
                    Text(exampleMealDetailModel.strIngredient3!)
                }
                .padding(.horizontal, 5)
                HStack {
                    Text(("\u{2022}"))
                    Text(exampleMealDetailModel.strMeasure4!)
                    Text(exampleMealDetailModel.strIngredient4!)
                }
                .padding(.horizontal, 5)
                HStack {
                    Text(("\u{2022}"))
                    Text(exampleMealDetailModel.strMeasure5!)
                    Text(exampleMealDetailModel.strIngredient5!)
                }
                .padding(.horizontal, 5)
                HStack {
                    Text(("\u{2022}"))
                    Text(exampleMealDetailModel.strMeasure6!)
                    Text(exampleMealDetailModel.strIngredient6!)
                }
                .padding(.horizontal, 5)
                HStack {
                    Text(("\u{2022}"))
                    Text(exampleMealDetailModel.strMeasure7!)
                    Text(exampleMealDetailModel.strIngredient7!)
                }
                .padding(.horizontal, 5)
                if exampleMealDetailModel.strIngredient8 != "" {
                    HStack {
                        Text(("\u{2022}"))
                        Text("Amount")
                        Text("Ingredient")
                    }
                    .padding(.horizontal, 5)
                }
                
                
                
                Text("Instructions")
                    .font(.title3)
                    .padding(5)
                Text(exampleMealDetailModel.strInstructions)
                    .padding()
                Text("Source")
                    .padding()
            }
        }
        .navigationTitle("Banana Pancakes")
    }
}

#Preview {
    MealDetailView()
}
