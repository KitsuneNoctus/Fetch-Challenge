# Fetch Coding Challenge
Build a native iOS App that uses the [TheMealDB](https://themealdb.com/api.php) API

## Endpoints
* Fetch list of meals in Dessert category: https://themealdb.com/api/json/v1/1/filter.php?c=Dessert
* Fetch meal details: https://themealdb.com/api/json/v1/1/lookup.php?i=[MEAL_ID]
* BONUS: Give option to choose other Categories: https://www.themealdb.com/api/json/v1/1/categories.php

## Goal
User should see a list of the Dessert category items sorted alphabetically. When a user selects a meal they should see:
* Meal Name
* Instructions
* Ingredients/Measurements

## Guidelines
* Asynchronous code must be written using Swift Concurrency (async/await)
* Be sure to filter out any null or empty values from the API before displaying them.
* UI/UX design is not what you’re being evaluated on, but the app should be user friendly and should take basic app design principles into account
* Your project should compile using the latest version of Xcode

### Things to Note
* Asynchronus code should be written using SwiftConcurrency
* SwiftUI Preferred
* Explore patterns like MVVM
