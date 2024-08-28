//
//  MealTypeViewModel.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/27/24.
//

import Foundation

//https://www.themealdb.com/api/json/v1/1/categories.php

class MealTypeViewModel: ObservableObject {
    @Published var mealTypes: [MealTypeModel] = []
}

extension MealTypeViewModel {
    func fetchMealTypes() {
        let mealTypeURL = URL(string: "https://www.themealdb.com/api/json/v1/1/categories.php")!
                
        let mealTypesResource = Resource<MealTypeListModel>(url: mealTypeURL) { data in
            let mealTypesResponse = try? JSONDecoder().decode(MealTypeListModel.self, from: data)
            return mealTypesResponse
        }
        
        WebService().load(resource: mealTypesResource) { result in
            if let mealTypeList = result {
                DispatchQueue.main.async { [weak self] in
                    self?.mealTypes = mealTypeList.categories
                }
            }
        }
    }
}
