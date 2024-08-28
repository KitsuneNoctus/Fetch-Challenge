//
//  MealTypeModel.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/27/24.
//

import Foundation

struct MealTypeListModel: Decodable {
    let categories: [MealTypeModel]
}

struct MealTypeModel: Decodable {
    let idCategory: String
    let strCategory: String
}
