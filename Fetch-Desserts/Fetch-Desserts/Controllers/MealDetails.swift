//
//  MealDetails.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/24/24.
//

import SwiftUI

struct MealDetails: View {
    
    @State var mealDetailModel: MealDetailModel
    
    var body: some View {
        Text(mealDetailModel.strMeal ?? "Value")
    }
}

//#Preview {
//    MealDetails()
//}
