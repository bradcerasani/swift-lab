// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

// Noah's Ark, in Swift (https://twitter.com/futurepaul/status/473902211463118848)

let 🌍 = "🐶🐺🐱🐭🐹🐰🐸🐯🐨🐻🐷🐽🐮🐗🐵🐒🐴🐑🐘🐼🐧🐦🐤🐥🐣🐔🐍🐢🐛🐝🐜🐞🐌🐙🐚🐠🐟🐬🐳🐋🐄🐏🐀🐃🐅🐇🐉🐎🐐🐓🐕🐖🐁🐂🐲🐡🐊🐫🐪🐆🐈🐩"

var 🚢: String[] = []

for 💛 in 🌍 {
    🚢.append(💛 + 💛)
}

🚢

// The Swift Programming Language

// Use var for variables, let for constants.

var myVariable = 42
myVariable = 50
let myConstant = 42

// If initial value doesn't provide enough info, specify type after colon.

let explicitFloat: Float = 4
let explicitDouble: Double = 70

// Values are never implicitly converted to another type. To convert, explicitly make an instance of the desired type.

let label = "The height is "
let width = 800
let widthLabel = label + String(width)

// Include values in strings with \(varName)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let orangeSummary = "I have \(oranges) oranges."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

// define array
var shoppingList = ["eggs", "bacon", "batteries", "waffles"]

shoppingList[0] = "chocolate"


// define dictionary
var occupations = [
    "Michael Jackson": "Singer",
    "T-Pain": "Rappa Ternt Sanga",
]

occupations["Rick Ross"] = "Boss"

// create empty array or dictionary
let emptyArray = String[]()
let emptyDictionary = Dictionary<String, Float>()

// if type can be inferred, use `[]` for empty array and `[:]` for empty dictionary
shoppingList = []
occupations = [:]

// --------------------
// Control Flow
// --------------------

// Conditionals: `if` and `switch`
// Loops: `for-in` and `while` and `do-while`

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

teamScore

// in `if` statement, conditional MUST be a Boolean
var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

// Switches support any kind of data and a wide variety of comparison operators
let vegetable = "red pepper"
switch vegetable {
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
    case "cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich."
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it a spicy \(x)?"
    default:
        let vegetableComment = "Everything tastes good in soup."
}

// use for-in to iterate over items in a dictionary
let interesing











