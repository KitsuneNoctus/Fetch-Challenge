//
//  FoodItemDetailViewModel.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/21/24.
//

import Foundation

class MealDetailViewModel: ObservableObject {
    @Published var mealDetails: MealDetailModel? = nil
}

extension MealDetailViewModel {
    func fetchMealDetails(for mealID: String) {
        let mealDetailURL = URL(string: "https://themealdb.com/api/json/v1/1/lookup.php?i=\(mealID)")!
        print("https://themealdb.com/api/json/v1/1/lookup.php?i=\(mealID)")
        
        let mealResource = Resource<MealDetailModel>(url: mealDetailURL) { data in
            let mealResource = try? JSONDecoder().decode(MealDetailModel.self, from: data)
            return mealResource
        }
        
        WebService().load(resource: mealResource) { result in
            if let mealDetails = result {
                DispatchQueue.main.async { [weak self] in
                    self?.mealDetails = mealDetails
                }
            }
            else {
                print("getting nil")
            }
        }
    }
}
