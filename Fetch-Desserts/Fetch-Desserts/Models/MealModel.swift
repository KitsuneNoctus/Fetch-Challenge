//
//  FoodItemModel.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/21/24.
//

import Foundation

struct MealListModel: Decodable {
    let meals: [MealModel]
}

struct MealModel: Decodable {
    let strMeal: String
    let strMealThumb: String
    let idMeal: String
}
