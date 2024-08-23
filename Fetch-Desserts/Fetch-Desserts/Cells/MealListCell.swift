//
//  FoodItemListCell.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/21/24.
//

import SwiftUI

struct MealListCell: View {
    
    @State var mealModel: MealModel!
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: mealModel.strMealThumb)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            Text(mealModel.strMeal)
                .font(.title)
                .bold()
                .foregroundStyle(.black)
        }
        .padding()
    }
}

#Preview {
    MealListCell(mealModel: MealModel(strMeal: "Sticky Toffee Pudding", strMealThumb: "https://www.themealdb.com/images/media/meals/xqqqtu1511637379.jpg", idMeal:     "52883"))
}
