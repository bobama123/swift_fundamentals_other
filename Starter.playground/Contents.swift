import UIKit


//// HELLO SWIFT WORLD

let greeting = "Hello, playground"

var introduction = "My name is Bobby"

print(greeting + "! " + introduction)




//// ARITHMETIC

2 + 2 // Addition

4 - 1 // Subtraction

2 * 3 // Multiplication

1343 / 3 // Division

1343 % 3 // Modulo (remainder when divided by)

(2 + 2) * 4 // Brackets



50 - 23

60 * 24 * 365

32452 / 13

32452 % 13


(12 * 5) + 1
(1 * 12) * 100 / ((5 * 12) + 1)





//// CONTROL FLOW


var whatever = true

if whatever {
    print("whatever is true")
} else {
    print("whatever is false")
}

2 > 1
2 < 1

2 >= 2
2 <= 2

2 == 2

2 != 2

"Hello" == "Hello"

"Hello" != "Hello"

//2 == "2" will be an error as 2 different types


var myList = [1, 2, 3]

myList == [1, 2, 3]





let randomInt = Int.random(in: 1..<6)

if randomInt == 1 {
    print("One")
}
else if randomInt == 2 {
    print("Two")
}
else {
    print("More")
}





let roles = ["doctor", "nurse", "patient", "driver", "plumber"]
var role = roles.randomElement()

switch role {
case "doctor":
    print("Please go to the second floor")

case "nurse":
    print("Please go to the first floor")

case "patient":
    print("Please go to the waiting room")

default:
    print("Please go to reception")
}





let randomIntFizz = Int.random(in: 1..<101)

if randomIntFizz % 3 == 0 && randomIntFizz % 5 == 0 {
    print("FizzBuzz")
} else if randomIntFizz % 3 == 0 {
    print("Fizz")
} else if randomIntFizz % 5 == 0 {
    print("Buzz")
} else {
    print(randomIntFizz)
}




//// LOOPS


let activities = ["play", "sleep", "eat"]

for item in activities {
  print("Most young dogs like to \(item).")
}





let activitiesDo = ["play", "sleep", "eat"]

for index in 0..<activitiesDo.count {
  print("Most young dogs like to \(activitiesDo[index]).")
}




var count = 0
for number in 2341...34325 {
    if number % 2 == 0 {
        count += number
    }
}

print(count)




var factorial = 1

for number in 1...17 {
    factorial = factorial * number
}

print(factorial)



////  DATA STRUCTURES


var fruityArray = ["Apples", "Oranges", "Pears"]

fruityArray[0]    // => "Apples"
fruityArray[1]    // => "Oranges"
fruityArray[2]    // => "Pears"
//fruityArray[3]  Fatal error: Index out of range
fruityArray.count // => 3

if fruityArray.contains("Apples") {
    print("Yummy!")
}




var veggieDictionary = [
  "carrots": 23,
  "onions": 32,
  "broccolis": 21
]

veggieDictionary["carrots"]    // => 23
veggieDictionary["onions"]    // => 32
veggieDictionary["broccolis"]    // => 21






var myAnimalList = ["Cat", "Mouse", "Frog"]

myAnimalList.remove(at: 0)
myAnimalList.insert("Lynx", at: 1)
myAnimalList.insert("Cat", at: 2)
print(myAnimalList)
// Should print:
// ["Mouse", "Lynx", "Cat", "Frog"]




let myAnimals = ["Cat", "cat", "frog", "cat", "dog", "Dog"]
var counters = [String: Int]()
// Do not worry about this syntax for now!
// All we have done is declared an empty dictionary
// with keys being strings and values being numbers

counters["cat"] = 0
counters["dog"] = 0
counters["frog"] = 0
for animal in myAnimals {
    if animal.lowercased() == "cat" {
        counters["cat"]! += 1
    } else if animal.lowercased() == "dog" {
        counters["dog"]! += 1
    } else {
        counters["frog"]! += 1
    }
}

print(counters)





// Program should print a dictionary with each of the letters of the alphabet
// and the number of countries which begin with that letter.
// E.g. [ "a": 2, "b": 0, ... ]


var myCountries = ["england", "Germany", "italy", "Estonia"]


let alphabet = "abcdefghijklmnopqrstuvwxyz"

// Initialize an empty dictionary
var alphabetDictionary = [Character: Int]()

// Iterate through each character in the alphabet and set its value to 0
for char in alphabet {
    alphabetDictionary[char] = 0
}



for country in myCountries {
    let firstChar = country.lowercased()[country.startIndex]
    alphabetDictionary[firstChar]! += 1
}

print(alphabetDictionary)




//// FUNCTIONS

func greetAll() {
  print("Hello everyone!")
}
greetAll()
// Prints: "Hello, everyone!"


func greet(name: String) {
  print("Hello, \(name)!")
}
greet(name: "Josué")
// Prints: "Hello, Josué!"


func greetAllToo() -> String {
  return "Hello everyone!"
}
print(greetAllToo())
// Prints: "Hello, everyone!"


func greetToo(name: String) -> String {
  return "Hello, \(name)!"
}
print(greetToo(name: "Josué"))
// Prints: "Hello, Josué!"




func addFive(_ num: Int) -> Int {
    return 5 + num
}

print(addFive(4))
print(addFive(2132))
//print(addFive(num: 4)) <- normal way with the argument label

//_ is used as a placeholder for the external parameter name. When you call the function, you don't need to specify any argument label. The function call addFive(4) directly passes 4 as the value for the parameter num.



func subtractLowFromHigh(_ num1: Int, _ num2: Int) -> Int {
    if num1 > num2 {
        return num1 - num2
    } else if num1 < num2 {
        return num2 - num1
    } else {
        return 0
    }
}


print(subtractLowFromHigh(2, 3))

print(subtractLowFromHigh(3, 2))

print(addFive(subtractLowFromHigh(1463, 16475)))



func superify(element: String) -> String {
    return "super" + element
}

print(superify(element: "cat"))

print(superify(element: superify(element: superify(element: superify(element: "cat")))))





//// CLASSES


class Greet {
  let greeter: String

  init(greeter: String) {
    self.greeter = greeter
  }

  func greetAnimals() -> String {
    return "Hello, lovely creatures!"
  }

  func greetNumberOfPeople(numberOfPeople: Int) -> String {
    return "Hello to all \(numberOfPeople) of you!"
  }
}

var greet = Greet(greeter: "Josué")
print(greet.greetAnimals())
// Prints: "Hello, lovely creatures!"

print(greet.greetNumberOfPeople(numberOfPeople: 6))
// Prints: "Hello to all 6 of you!"




class Introducer {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func announce() -> String {
        return "I am \(name)!"
    }
    
    func introduce(who: String) -> String {
        return "Hello \(who), I am \(name)!"
    }
}

var introducer = Introducer(name: "Josué")

print(introducer.announce())
// Should print: "I am Josué!"

print(introducer.introduce(who: "Fred"))
// Should print: "Hello Fred, I am Josué!"



class Reminder {
    let name: String
    var todo: String? //? means it is optional
    
    init(name: String) {
        self.name = name
    }
    
    func remindMeTo(todo: String) {
        self.todo = todo
    }
    
    func remind() -> String {
        if let todo = self.todo {
            return "\(name)! \(todo)"
        } else {
            return "\(name)! No task set."
        }
    }
}

var reminder = Reminder(name: "Josué")

reminder.remindMeTo(todo: "Walk the dog")

print(reminder.remind())




////  TYPE ANNOTATIONS


let myPet = "Black"
var myPetAge = 3


let myPet2: String = "Black"
var myPetAge2: Int = 3




let myPets: [String] = ["Black", "Erik", "Minerva"]
var myPetsHobbies: [String: String] = [
  "Black": "Run",
  "Erik": "Play",
  "Minerva": "Listen to music"
]



let numberOfMuseumsLeftToVisit: Int = 0
var moneyLeftAtTheEndOfCurrentMonth: Double = 0






class Pet {
    let name: String
    let owner: String
    let likes: [String]
    let dislikes: [String]
    let neutral: [String]
    
    init(name: String, owner: String, likes: [String], dislikes: [String], neutral: [String]) {
        self.name = name
        self.owner = owner
        self.likes = likes
        self.dislikes = dislikes
        self.neutral = neutral
    }
    
    func getInformation(kind: String) -> String {
        if kind == "Likes" {
            let likeList = likes.joined(separator: ", ")
            return "\(name) likes \(likeList)!"
        } else if kind == "Dislikes" {
            let dislikeList = dislikes.joined(separator: ", ")
            return "\(name) dislikes \(dislikeList)!"
        } else {
            let neutralList = neutral.joined(separator: ", ")
            return "\(name) does not like or dislike playing with \(neutralList)!"
        }
    }
}

let black = Pet(
  name: "Black",
  owner: "Josué",
  likes: ["running", "chasing", "singing"],
  dislikes: ["octopus", "cats"],
  neutral: ["squirrels"]
)

print(black.getInformation(kind: "Likes"))

print(black.getInformation(kind: "Dislikes"))

print(black.getInformation(kind: "Neutral"))






//// OPTIONAL HANDLING


var optionalString: String?  // Declares an optional variable of type String

//// Using if let
//if let actualValue = optionalVariable {
//    print("The optional has a value: \(actualValue)")
//} else {
//    print("The optional is nil.")
//}


// Using guard let for exitng a block of code early if the optional doesn't contain a value
func printOptionalValue(_ optionalValue: String?) {
    guard let actualValue = optionalValue else {
        print("The optional is nil.")
        return
    }
    print("The optional has a value: \(actualValue)")
}



var petNickname: String? = "Fluffy"

func greetPet(_ nickname: String?) -> String {
    if let name = nickname {
        return "Hello, \(name)!"
    } else {
        return "Hello nothing!"
    }
}

print(greetPet(petNickname))
print(greetPet(nil))




let bookTitle: String = "Hot Milk"
var bookDescription: String? = "A vibrant and starkly humorous tale of a mother-daughter relationship and the complexities of identity."
var bookReason: String? = "It's a compelling exploration of the human psyche and personal transformation."



func printFavouriteBookDetails(_ title: String, _ description: String?, _ reason: String?) -> String {
    if let bookDescriptions = description, let bookReasons = reason {
        return "Title: \(title)\nDescription: \(bookDescriptions)\nReason: \(bookReasons)"
    } else if let bookDescriptions = description{
        return "Title: \(title)\nDescription: \(bookDescriptions)"
    } else if let bookReasons = reason {
        return "Title: \(title)\nReason: \(bookReasons)"
    } else {
        return "Title: \(title)"
    }
}

print(printFavouriteBookDetails(bookTitle, bookDescription, bookReason))
print(printFavouriteBookDetails(bookTitle, bookDescription, nil))
print(printFavouriteBookDetails(bookTitle, nil, bookReason))
print(printFavouriteBookDetails(bookTitle, nil, nil))
























