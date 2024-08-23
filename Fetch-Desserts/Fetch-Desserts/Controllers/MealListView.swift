//
//  FoodItemListView.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/21/24.
//

import SwiftUI

struct MealListView: View {
    
    @StateObject private var mealListViewModel: MealListViewModel = MealListViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(mealListViewModel.meals, id: \.idMeal) { meal in
                        NavigationLink(destination: MealDetailView()) {
                            MealListCell(mealModel: meal)
                        }
                    }
                }
                .padding(5)
            }
            .navigationTitle("Desserts")
        }.onAppear {
            let url = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert")!
            WebService().getMeals(url: url) { meals in
                guard let meals = meals else {
                    return
                }
                mealListViewModel.meals.append(contentsOf: meals)
            }
        }
    }
}

#Preview {
    MealListView()
}
