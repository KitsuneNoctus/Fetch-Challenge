//
//  FoodItemDetailView.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/21/24.
//

import SwiftUI

struct MealDetailView: View {
    
    @StateObject private var mealDetailViewModel: MealDetailViewModel = MealDetailViewModel()
    @State var mealID: String
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                if let thumbStringURL = mealDetailViewModel.mealDetails.first?.strMealThumb  {
                    AsyncImage(url: URL(string: thumbStringURL)) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                    } placeholder: {
                        ProgressView()
                    }
                }
                Text(mealDetailViewModel.mealDetails.first?.strMeal ?? "Title")
                    .font(.largeTitle)
                    .bold()
                    .padding(.horizontal, 5)
                HStack {
                    Text("Tags: \(mealDetailViewModel.mealDetails.first?.strTags)")
                        .font(.caption)
                    Spacer()
                    Text(mealDetailViewModel.mealDetails.first?.strArea ?? "Area")
                        .font(.caption)
                }
                .padding(5)
                Text("Video")
                    .padding(5)
                Text("Ingredients")
                    .font(.title3)
                    .padding(5)
                MealInstructions(strMeasure1: mealDetailViewModel.mealDetails.first?.strMeasure1, strMeasure2: mealDetailViewModel.mealDetails.first?.strMeasure2, strMeasure3: mealDetailViewModel.mealDetails.first?.strMeasure3, strMeasure4: mealDetailViewModel.mealDetails.first?.strMeasure4, strMeasure5: mealDetailViewModel.mealDetails.first?.strMeasure5, strMeasure6: mealDetailViewModel.mealDetails.first?.strMeasure6, strMeasure7: mealDetailViewModel.mealDetails.first?.strMeasure7, strMeasure8: mealDetailViewModel.mealDetails.first?.strMeasure8, strMeasure9: mealDetailViewModel.mealDetails.first?.strMeasure9, strMeasure10: mealDetailViewModel.mealDetails.first?.strMeasure10, strMeasure11: mealDetailViewModel.mealDetails.first?.strMeasure11, strMeasure12: mealDetailViewModel.mealDetails.first?.strMeasure12, strMeasure13: mealDetailViewModel.mealDetails.first?.strMeasure13, strMeasure14: mealDetailViewModel.mealDetails.first?.strMeasure14, strMeasure15: mealDetailViewModel.mealDetails.first?.strMeasure15, strMeasure16: mealDetailViewModel.mealDetails.first?.strMeasure16, strMeasure17: mealDetailViewModel.mealDetails.first?.strMeasure17, strMeasure18: mealDetailViewModel.mealDetails.first?.strMeasure18, strMeasure19: mealDetailViewModel.mealDetails.first?.strMeasure19, strMeasure20: mealDetailViewModel.mealDetails.first?.strMeasure20,
                    strIngredient1: mealDetailViewModel.mealDetails.first?.strIngredient1, strIngredient2: mealDetailViewModel.mealDetails.first?.strIngredient2, strIngredient3: mealDetailViewModel.mealDetails.first?.strIngredient3, strIngredient4: mealDetailViewModel.mealDetails.first?.strIngredient4,strIngredient5: mealDetailViewModel.mealDetails.first?.strIngredient5, strIngredient6: mealDetailViewModel.mealDetails.first?.strIngredient6, strIngredient7: mealDetailViewModel.mealDetails.first?.strIngredient7, strIngredient8: mealDetailViewModel.mealDetails.first?.strIngredient8, strIngredient9: mealDetailViewModel.mealDetails.first?.strIngredient9, strIngredient10: mealDetailViewModel.mealDetails.first?.strIngredient10, strIngredient11: mealDetailViewModel.mealDetails.first?.strIngredient11, strIngredient12: mealDetailViewModel.mealDetails.first?.strIngredient12, strIngredient13: mealDetailViewModel.mealDetails.first?.strIngredient13, strIngredient14: mealDetailViewModel.mealDetails.first?.strIngredient14, strIngredient15: mealDetailViewModel.mealDetails.first?.strIngredient15, strIngredient16: mealDetailViewModel.mealDetails.first?.strIngredient16, strIngredient17: mealDetailViewModel.mealDetails.first?.strIngredient17, strIngredient18: mealDetailViewModel.mealDetails.first?.strIngredient18, strIngredient19: mealDetailViewModel.mealDetails.first?.strIngredient19, strIngredient20: mealDetailViewModel.mealDetails.first?.strIngredient20)
                Text("Instructions")
                    .font(.title3)
                    .padding(5)
                Text(mealDetailViewModel.mealDetails.first?.strInstructions ?? "No Instructions Provided...")
                    .padding(5)
             
                if let mealSourceLink = mealDetailViewModel.mealDetails.first?.strSource {
                    Link(destination: URL(string: mealSourceLink)!, label: {
                        Text("Source")
                            .padding(5)
                    })
                }
            }
        }
        .ignoresSafeArea(edges: .top)
//        .navigationBarBackButtonHidden()
//        .navigationTitle("Banana Pancakes")
        .onAppear {
            mealDetailViewModel.fetchMealDetails(for: mealID)
        }
    }
}

//#Preview {
//    MealDetailView()
//}
