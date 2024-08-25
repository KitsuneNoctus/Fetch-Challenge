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
        
        VStack {
//            mealDetailViewModel.mealDetails
//            MealDetails(mealDetailModel: mealDetailViewModel.mealDetails)
            Text(mealDetailViewModel.mealDetails.first?.strArea ?? "Nope")
        }
        .onAppear {
            mealDetailViewModel.fetchMealDetails(for: mealID)
        }
        
//        ScrollView {
//            VStack(alignment: .leading) {
////                AsyncImage(url: URL(string: mealDetailViewModel.mealDetails!.strMealThumb)) { image in
////                    image
////                        .resizable()
////                        .scaledToFit()
////                        .frame(maxWidth: .infinity)
////                } placeholder: {
////                    ProgressView()
////                }
//                HStack {
//                    Text("Tags: \(mealDetailViewModel.mealDetails?.strTags)")
//                    Spacer()
//                    Text(mealDetailViewModel.mealDetails?.strArea ?? "Area")
//                }
//                .padding(5)
//                Text("Video")
//                    .padding(5)
//                Text("Ingredients")
//                    .font(.title3)
//                    .padding(5)
//                
////                HStack {
////                    Text(("\u{2022}"))
////                    Text(mealDetailViewModel.mealDetails.strMeasure1!)
////                    Text(mealDetailViewModel.mealDetails.strIngredient1!)
////                }
////                .padding(.horizontal, 5)
////                HStack {
////                    Text(("\u{2022}"))
////                    Text(mealDetailViewModel.mealDetails.strMeasure2!)
////                    Text(mealDetailViewModel.mealDetails.strIngredient2!)
////                }
////                .padding(.horizontal, 5)
////                HStack {
////                    Text(("\u{2022}"))
////                    Text(mealDetailViewModel.mealDetails.strMeasure3!)
////                    Text(mealDetailViewModel.mealDetails.strIngredient3!)
////                }
////                .padding(.horizontal, 5)
////                HStack {
////                    Text(("\u{2022}"))
////                    Text(mealDetailViewModel.mealDetails.strMeasure4!)
////                    Text(mealDetailViewModel.mealDetails.strIngredient4!)
////                }
////                .padding(.horizontal, 5)
////                HStack {
////                    Text(("\u{2022}"))
////                    Text(mealDetailViewModel.mealDetails.strMeasure5!)
////                    Text(mealDetailViewModel.mealDetails.strIngredient5!)
////                }
////                .padding(.horizontal, 5)
////                HStack {
////                    Text(("\u{2022}"))
////                    Text(mealDetailViewModel.mealDetails.strMeasure6!)
////                    Text(mealDetailViewModel.mealDetails.strIngredient6!)
////                }
////                .padding(.horizontal, 5)
////                HStack {
////                    Text(("\u{2022}"))
////                    Text(mealDetailViewModel.mealDetails.strMeasure7!)
////                    Text(mealDetailViewModel.mealDetails.strIngredient7!)
////                }
////                .padding(.horizontal, 5)
////                if mealDetailViewModel.mealDetails.strIngredient8 != "" {
////                    HStack {
////                        Text(("\u{2022}"))
////                        Text("Amount")
////                        Text("Ingredient")
////                    }
////                    .padding(.horizontal, 5)
////                }
////                
////                
////                
////                Text("Instructions")
////                    .font(.title3)
////                    .padding(5)
////                Text(mealDetailViewModel.mealDetails.strInstructions)
////                    .padding()
////                
////                Link(destination: URL(string: mealDetailViewModel.mealDetails.strSource ?? "")!, label: {
////                    Text("Source")
////                        .padding()
////                })
//            }
//        }
//        .navigationTitle("Banana Pancakes")
//        .onAppear {
//            mealDetailViewModel.fetchMealDetails(for: mealID)
//        }
    }
}

//#Preview {
//    MealDetailView()
//}
