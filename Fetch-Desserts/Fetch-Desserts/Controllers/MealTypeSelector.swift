//
//  MealTypeSelector.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/27/24.
//

import SwiftUI

struct MealTypeSelector: View {
    
    @StateObject private var mealTypeVM: MealTypeViewModel = MealTypeViewModel()
    
    @Binding var selectedMealType: String
    
    var action: (() -> Void)
    
    var body: some View {
        HStack {
            Text("Currently Selected: ")
            Picker("Please choose a color", selection: $selectedMealType) {
                ForEach(mealTypeVM.mealTypes, id: \.strCategory) { meal in
                    Text(meal.strCategory)
//                    action(meal.strCategory)
                }
            }
            .onTapGesture(perform: {
                action()
            })
        }
        .onAppear {
            mealTypeVM.fetchMealTypes()
        }
    }
}

//#Preview {
//    MealTypeSelector(selectedMealType: <#Binding<String>#>)
//}
