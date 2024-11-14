import Foundation

//Variables

//Mutable keyword 'var' can be reassigned

var greet = "Hellow, World"
greet = "Hello, Swift"

print(greet)

//Immutable keyword 'let' - contant
let immutbale = "Value cannot change"
//immutbale = "Hello, iOS"  //this wont work

//Type Inference
var name: String = "John"
//var age = 20 -> Type is inferred var age: Int = 20

let address: String = "Boston"

//Data Types
//Primitive Int, String, Float, Double, Bool


//String Interpolation
let city = "Boston"
print("Welcome to \(city)") //Java equivalent -> Sout("Welcome to " + city)

//Control Flow

//if-else, switch

let age = 16

if age < 18 && age > 15 {
    print("You cannot drive")
} else {
    print("You can drive")
}

//Switch Statement
let fruit = "apple"
switch fruit {
    case "apple":
        print("It is an apple")
    case "pear":
        print("It is an pear")
    default:
        print("Unknown fruit")
}


//Loops

for num in 1...10 {
    print(num)
}

var count = 20
while count <= 30 {
    print(count)
    count += 1
}

//Functions
func getString() -> String {
    return "Got the String"
}

let myString = getString()
print(myString)

func add(externalName num1: Int = 50, num2: Int) -> Int {
    return num1 + num2
}

let sum = add(num2: 20)
print(sum)

func subtract(_ a: Int, _ b: Int) -> Int {
    return a-b
}

let sub = subtract(10, 30)

//Closure
func greet(name: String) {
    print("Hello \(name)")
}

let add = { (a: Int, b: Int) -> Int in
    return a+b
}

let sumWithClosure = add(50, 100)
print(sumWithClosure)


//Optionals

var optionalName: String? = nil //This variable can or cannot have a value
print(optionalName ?? "Default Value") // ?? is a nil-coalescing operator

if let name = optionalName { //if not nil
    print(name)
} else { //if found nil
    print("Found Nil")
}

func guardLet(optionalName: String?) {
    guard let name = optionalName else {
        print("Found Nil")
        return
    }
    
    print("Hello \(name)")
}

guardLet(optionalName: nil)
guardLet(optionalName: "John Doe")
