//
//  MealTypeSelector.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/27/24.
//

import SwiftUI

struct MealTypeSelector: View {
    
    @StateObject private var mealTypeVM: MealTypeViewModel = MealTypeViewModel()
    
    @State private var selectedMealType = "Dessert"
    
    var body: some View {
        HStack {
            Text("Currently Selected: ")
            Picker("Please choose a color", selection: $selectedMealType) {
                ForEach(mealTypeVM.mealTypes, id: \.strCategory) { meal in
                    Text(meal.strCategory)
                }
            }
        }
        .onAppear {
            mealTypeVM.fetchMealTypes()
        }
    }
}

#Preview {
    MealTypeSelector()
}
