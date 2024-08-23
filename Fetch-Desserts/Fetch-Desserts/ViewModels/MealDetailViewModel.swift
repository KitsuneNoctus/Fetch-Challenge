//
//  FoodItemDetailViewModel.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/21/24.
//

import Foundation

class MealDetailViewModel {
    
    func getMealDetails(for mealID: String, completion: @escaping (MealDetailModel) -> Void) {
        //TODO: Unwrap this safely
        let mealDetailURL = URL(string: "https://themealdb.com/api/json/v1/1/lookup.php?i=\(mealID)")!
        
        let mealResource = Resource<MealDetailModel>(url: mealDetailURL) { data in
            let mealResource = try? JSONDecoder().decode(MealDetailModel.self, from: data)
            return mealResource
        }
        
        WebService().load(resource: mealResource) { result in
            if let mealResource = result {
//                let vm =
//                completion(vm)
            }
        }
    }
}
