//
//  WebService.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/21/24.
//

import Foundation

struct Resource<T> {
    let url: URL
    let parse: (Data) -> T?
}

final class WebService {
    
    func getMeals(url: URL, completion: @escaping ([MealModel]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }
            else if let data = data {
                let mealList = try? JSONDecoder().decode(MealListModel.self, from: data)
                if let mealList = mealList {
                    completion(mealList.meals)
                }
            }
        }.resume()
    }
    
    func getMealDetails() {
        
    }
    
    
    //MARK: COME BACK HERE LATER
//    func load<T>(resource: Resource<T>, completion: @escaping(T?)->()) {
//        URLSession.shared.dataTask(with: resource.url) { data, response, error in
//            if let data = data {
//                DispatchQueue.main.async {
//                    completion(resource.parse(data))
//                }
//            }
//            else {
//                completion(nil)
//            }
//        }.resume()
//    }
//    
//    func getMealDetails(for mealID: String, completion: @escaping (MealDetailModel) -> Void) {
//        //TODO: Unwrap this safely
//        let mealDetailURL = URL(string: "https://themealdb.com/api/json/v1/1/lookup.php?i=\(mealID)")!
//        
//        let mealResource = Resource<MealDetailModel>(url: mealDetailURL) { data in
//            let mealResource = try? JSONDecoder().decode(MealDetailModel.self, from: data)
//            return mealResource
//        }
//        
//        WebService().load(resource: mealResource) { result in
//            if let mealResource = result {
////                let vm =
////                completion(vm)
//            }
//        }
//    }
}
