//
//  FoodItemListView.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/21/24.
//

import SwiftUI

struct MealListView: View {
    
    @StateObject private var mealListViewModel: MealListViewModel = MealListViewModel()
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(searchResults, id: \.idMeal) { meal in
                        NavigationLink(destination: MealDetailView(mealID: meal.idMeal)) {
                            MealListCell(mealModel: meal)
                        }
                    }
                }
                .padding(5)
            }
            .navigationTitle("Desserts")
        }
        .searchable(text: $searchText)
        .onAppear {
            mealListViewModel.fetchMeals()
        }
    }
    
    var searchResults: [MealModel] {
        if searchText.isEmpty {
            return mealListViewModel.meals
        } else {
            return mealListViewModel.meals.filter {
                $0.strMeal.lowercased().contains(searchText.lowercased())
            }
        }
    }
}

#Preview {
    MealListView()
}
