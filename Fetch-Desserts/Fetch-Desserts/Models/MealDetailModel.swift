//
//  FoodItemDetailModel.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/21/24.
//

import Foundation

struct MealDetailModel: Decodable {
    let strMeal: String
    let strArea: String
    let strInstructions: String
    let strMealThumb: String
    let strTags: String
    let strYouTube: String
    let strIngredient1: String?
    let strIngredient2: String?
    let strIngredient3: String?
    let strIngredient4: String?
    let strIngredient5: String?
    let strIngredient6: String?
    let strIngredient7: String?
    let strIngredient8: String?
    let strIngredient9: String?
    let strIngredient10: String?
    let strIngredient11: String?
    let strIngredient12: String?
    let strIngredient13: String?
    let strIngredient14: String?
    let strIngredient15: String?
    let strIngredient16: String?
    let strIngredient17: String?
    let strIngredient18: String?
    let strIngredient19: String?
    let strIngredient20: String?
    let strMeasure1: String?
    let strMeasure2: String?
    let strMeasure3: String?
    let strMeasure4: String?
    let strMeasure5: String?
    let strMeasure6: String?
    let strMeasure7: String?
    let strMeasure8: String?
    let strMeasure9: String?
    let strMeasure10: String?
    let strMeasure11: String?
    let strMeasure12: String?
    let strMeasure13: String?
    let strMeasure14: String?
    let strMeasure15: String?
    let strMeasure16: String?
    let strMeasure17: String?
    let strMeasure18: String?
    let strMeasure19: String?
    let strMeasure20: String?
    let strSource: String
}

let exampleMealDetailModel = MealDetailModel(strMeal: "Banana Pancakes",
                                             strArea: "American",
                                             strInstructions: "In a bowl, mash the banana with a fork until it resembles a thick purée. Stir in the eggs, baking powder and vanilla.\r\nHeat a large non-stick frying pan or pancake pan over a medium heat and brush with half the oil. Using half the batter, spoon two pancakes into the pan, cook for 1-2 mins each side, then tip onto a plate. Repeat the process with the remaining oil and batter. Top the pancakes with the pecans and raspberries.",
                                             strMealThumb: "https://www.themealdb.com/images/media/meals/sywswr1511383814.jpg",
                                             strTags: "Breakfast,Desert,Sweet",
                                             strYouTube: "https://www.youtube.com/watch?v=kSKtb2Sv-_U",
                                             strIngredient1: "Banana", strIngredient2: "Eggs", strIngredient3: "Baking Powder", strIngredient4: "Vanilla Extract", strIngredient5: "Oil", strIngredient6: "Pecan Nuts", strIngredient7: "Raspberries", strIngredient8: "", strIngredient9: "", strIngredient10: "", strIngredient11: "", strIngredient12: "", strIngredient13: "", strIngredient14: "", strIngredient15: "", strIngredient16: "", strIngredient17: "", strIngredient18: "", strIngredient19: "", strIngredient20: "",
                                             strMeasure1: "1 large", strMeasure2: "2 medium", strMeasure3: "pinch", strMeasure4: "spinkling", strMeasure5: "1 tsp ", strMeasure6: "25g", strMeasure7: "125g", strMeasure8: "", strMeasure9: "", strMeasure10: "", strMeasure11: "", strMeasure12: "", strMeasure13: "", strMeasure14: "", strMeasure15: "", strMeasure16: "", strMeasure17: "", strMeasure18: "", strMeasure19: "", strMeasure20: "",
                                             strSource: "https://www.bbcgoodfood.com/recipes/banana-pancakes")
