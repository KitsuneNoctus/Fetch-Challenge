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

//extension MealListViewModel {
//    //TODO: BONUS - Give ability to look at other meal types
//    func getMeals(for mealType: String = "Dessert", completion: @escaping ([MealModel]) -> Void) {
//        //TODO: Make sure to unwrap safely
//        let mealCategoryURL = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=\(mealType)")!
//        
//        let mealsResource = Resource<[MealModel]>(url: mealCategoryURL) { data in
//            let mealsResponse = try? JSONDecoder().decode([MealModel.self], from: data)
//            return mealsResponse
//        }
//        
//        WebService().load(resource: mealsResource) { result in
//            if let mealsResource = result {
////                let vm =
////                completion(vm)
//            }
//        }
//    }
//}
