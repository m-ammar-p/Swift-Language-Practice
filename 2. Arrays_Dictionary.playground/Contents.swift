
import UIKit

var shoppingList = ["catfish", "water",
         "food", "blue paint"]

shoppingList[1] = "bottle of water"


// Dictionary has no index number (key: value)
var occupations = [
    "jhon": "Captain",
    "Max": "Mechanic",
]

occupations["James"] = "Public Relations"

print(shoppingList)
print(occupations)

// To Empty Array or Dictionary
shoppingList = []
occupations = [:]

print("---------------------------------------------")
// Declaration
let emptyArray = [String]()

let emptyDictionary = [String: Float]()

print(emptyArray)
print(emptyDictionary)


