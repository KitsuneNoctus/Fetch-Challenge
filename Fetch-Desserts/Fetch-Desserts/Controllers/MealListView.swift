//
//  FoodItemListView.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/21/24.
//

import SwiftUI

struct MealListView: View {
    
    @StateObject private var mealListViewModel: MealListViewModel = MealListViewModel()
    
//    private var mealSelector = MealTypeSelector(selectedMealType: <#Binding<String>#>)
    
    @State private var selectedMealType = "Dessert"
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    MealTypeSelector(selectedMealType: $selectedMealType) {
                        mealListViewModel.fetchMeals(for: selectedMealType)
                    }
                    ForEach(mealListViewModel.meals, id: \.idMeal) { meal in
                        NavigationLink(destination: MealDetailView(mealID: meal.idMeal)) {
                            MealListCell(mealModel: meal)
                        }
                    }
                }
                .padding(5)
            }
            .navigationTitle("Desserts")
        }
        .onAppear {
            mealListViewModel.fetchMeals()
        }
    }   
}

#Preview {
    MealListView()
}
