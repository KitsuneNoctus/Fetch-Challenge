//
//  FoodItemListViewModel.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/21/24.
//

import Foundation

class MealListViewModel: ObservableObject {
    @Published var meals: [MealModel] = []
}

extension MealListViewModel {
    func fetchMeals(for mealType: String = "Dessert") {
        let mealCategoryURL = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=\(mealType)")!
                
        let mealsResource = Resource<MealListModel>(url: mealCategoryURL) { data in
            let mealsResponse = try? JSONDecoder().decode(MealListModel.self, from: data)
            return mealsResponse
        }
        
        WebService().load(resource: mealsResource) { result in
            if let mealList = result {
                DispatchQueue.main.async { [weak self] in
                    self?.meals = mealList.meals
                }
            }
        }
    }
}
