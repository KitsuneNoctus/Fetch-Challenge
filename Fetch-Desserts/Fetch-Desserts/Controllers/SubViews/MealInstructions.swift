//
//  MealInstructions.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/26/24.
//

import SwiftUI

struct MealInstructions: View {
    var strMeasure1: String?
    var strMeasure2: String?
    var strMeasure3: String?
    var strMeasure4: String?
    var strMeasure5: String?
    var strMeasure6: String?
    var strMeasure7: String?
    var strMeasure8: String?
    var strMeasure9: String?
    var strMeasure10: String?
    var strMeasure11: String?
    var strMeasure12: String?
    var strMeasure13: String?
    var strMeasure14: String?
    var strMeasure15: String?
    var strMeasure16: String?
    var strMeasure17: String?
    var strMeasure18: String?
    var strMeasure19: String?
    var strMeasure20: String?
    
    var strIngredient1: String?
    var strIngredient2: String?
    var strIngredient3: String?
    var strIngredient4: String?
    var strIngredient5: String?
    var strIngredient6: String?
    var strIngredient7: String?
    var strIngredient8: String?
    var strIngredient9: String?
    var strIngredient10: String?
    var strIngredient11: String?
    var strIngredient12: String?
    var strIngredient13: String?
    var strIngredient14: String?
    var strIngredient15: String?
    var strIngredient16: String?
    var strIngredient17: String?
    var strIngredient18: String?
    var strIngredient19: String?
    var strIngredient20: String?
    
    var body: some View {
        if let strMeasure1 = strMeasure1, strMeasure1 != " " &&  strMeasure1 != "" {
            IngredientLine(ingredient: strIngredient1, measure: strMeasure1)
        }
        if let strMeasure2 = strMeasure2, strMeasure2 != " " &&  strMeasure2 != "" {
            IngredientLine(ingredient: strIngredient2, measure: strMeasure2)
        }
        if let strMeasure3 = strMeasure3, strMeasure3 != " " &&  strMeasure3 != "" {
            IngredientLine(ingredient: strIngredient3, measure: strMeasure3)
        }
        if let strMeasure4 = strMeasure4, strMeasure4 != " " &&  strMeasure4 != "" {
            IngredientLine(ingredient: strIngredient4, measure: strMeasure4)
        }
        if let strMeasure5 = strMeasure5, strMeasure5 != " " &&  strMeasure5 != "" {
            IngredientLine(ingredient: strIngredient5, measure: strMeasure5)
        }
        if let strMeasure6 = strMeasure6, strMeasure6 != " " &&  strMeasure6 != "" {
            IngredientLine(ingredient: strIngredient6, measure: strMeasure6)
        }
        if let strMeasure7 = strMeasure7, strMeasure7 != " " &&  strMeasure7 != "" {
            IngredientLine(ingredient: strIngredient7, measure: strMeasure7)
        }
        if let strMeasure8 = strMeasure8, strMeasure8 != " " &&  strMeasure8 != "" {
            IngredientLine(ingredient: strIngredient8, measure: strMeasure8)
        }
        if let strMeasure9 = strMeasure9, strMeasure9 != " " &&  strMeasure9 != "" {
            IngredientLine(ingredient: strIngredient9, measure: strMeasure9)
        }
        if let strMeasure10 = strMeasure10, strMeasure10 != " " &&  strMeasure10 != "" {
            IngredientLine(ingredient: strIngredient10, measure: strMeasure10)
        }
        if let strMeasure11 = strMeasure11, strMeasure11 != " " &&  strMeasure11 != "" {
            IngredientLine(ingredient: strIngredient11, measure: strMeasure11)
        }
        if let strMeasure12 = strMeasure12, strMeasure12 != " " &&  strMeasure12 != "" {
            IngredientLine(ingredient: strIngredient12, measure: strMeasure12)
        }
        if let strMeasure13 = strMeasure13, strMeasure13 != " " &&  strMeasure13 != "" {
            IngredientLine(ingredient: strIngredient13, measure: strMeasure13)
        }
        if let strMeasure14 = strMeasure14, strMeasure14 != " " &&  strMeasure14 != "" {
            IngredientLine(ingredient: strIngredient14, measure: strMeasure14)
        }
        if let strMeasure15 = strMeasure15, strMeasure15 != " " &&  strMeasure15 != "" {
            IngredientLine(ingredient: strIngredient15, measure: strMeasure15)
        }
        if let strMeasure16 = strMeasure16, strMeasure16 != " " &&  strMeasure16 != "" {
            IngredientLine(ingredient: strIngredient16, measure: strMeasure16)
        }
        if let strMeasure17 = strMeasure17, strMeasure17 != " " &&  strMeasure17 != "" {
            IngredientLine(ingredient: strIngredient17, measure: strMeasure17)
        }
        if let strMeasure18 = strMeasure18, strMeasure18 != " " &&  strMeasure18 != "" {
            IngredientLine(ingredient: strIngredient18, measure: strMeasure18)
        }
        if let strMeasure19 = strMeasure19, strMeasure19 != " " &&  strMeasure19 != "" {
            IngredientLine(ingredient: strIngredient19, measure: strMeasure19)
        }
        if let strMeasure20 = strMeasure20, strMeasure20 != " " &&  strMeasure20 != "" {
            IngredientLine(ingredient: strIngredient20, measure: strMeasure20)
        }
        
    }
}

//#Preview {
//    MealInstructions()
//}
