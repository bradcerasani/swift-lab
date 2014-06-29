// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

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
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
largest

// while loops reapeat a block of code until a condition changes
var n = 2
while n < 100 {
    n = n * 2
}
n

var m = 2
do {
    m = m * 2
} while m < 100
m

// keep an index in a loop by using .. to make a range of indexs or by writing an explicit init, condition, and increment. use .. to make a range that omits upper value, and ... to make a range that includes both values. These two loops do the same thing:

var firstForLoop = 0
for i in 0..3 {
    firstForLoop += i
}

var secondForLoop = 0
for var i = 0; i < 3; ++i {
    secondForLoop += 1
}
secondForLoop

// Functions and Closures

//use func to declare a function. Use -> to separate param names and types from functions return type

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet("Bob", "Sunday")

// use a tuple to return multiple values from a function:
func getGasPrices() -> (Double, Double, Double) {
    return (3.59, 3.69, 3.79)
}
getGasPrices()

// functions can take variable number of arguments, collecting them into an array:
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(42, 597, 12)

func averageOf(numbers: Int...) -> Int {
    var sum = 0
    var total = 0
    for number in numbers {
        sum += number
        total = total + 1
    }
    return sum / total
}
averageOf(8, 3, 5)

// nested functions

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

// functions can return another function
func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

// functions can take another function as one of its arguments
func hasAnyMatches(list: Int[], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)

numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
    })

// refactor tractor
numbers.map({ number in 3 * number})

//refer to params by number instaed of name (works for short closures)
sort([1, 5, 3, 12, 2]) { $0 > $1 }




