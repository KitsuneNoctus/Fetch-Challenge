//
//  FoodItemListView.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/21/24.
//

import SwiftUI

struct MealListView: View {
    
    let basicMealList: [MealModel] = [
        MealModel(strMeal: "Apam balik", strMealThumb: "https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg", idMeal: "1"),
        MealModel(strMeal: "Apple & Blackberry Crumble", strMealThumb: "https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg", idMeal: "2"),
        MealModel(strMeal: "Apple Frangipan Tart", strMealThumb: "https://www.themealdb.com/images/media/meals/wxywrq1468235067.jpg", idMeal: "3")
    ]
    
    var body: some View {
        NavigationStack {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .font(.title)
            List(basicMealList, id: \.idMeal) { meal in
                NavigationLink(destination: MealDetailView()) {
                    MealListCell()
                }
            }
            .navigationTitle("Desserts")
        }
    }
}

#Preview {
    MealListView()
}
