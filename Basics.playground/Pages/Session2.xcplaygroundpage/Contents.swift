import Foundation

//Collections

//Array

let list: [Int] = [1, 2, 3, 4, 5]

list.forEach { print($0) }

//Map
let map: [String: Int] = ["John": 10, "Doe": 100]


//Diff between Struct and Class -> Struct is value type and Class is reference type

//Struct

struct User {
    let name: String
    var age: Int
}

let user1 = User(name: "John", age: 10)
var user2 = user1
user2.age = 20
print(user1)
print(user2)

struct Point {
    var x: Double
    var y: Double
    
    mutating func change(newX: Double) {
        x = newX
    }
}

var point = Point(x: 10, y: 20)
point.change(newX: 30)
print(point)

enum Color {
    case red
    case green
    case blue
    
    var title: String {
        switch self {
            case .red: return "Red"
            case .green: return "Green"
            default: return "Unknown Color"
        }
    }
}

let color : Color = .blue
print(color.title)


//Classes

//self is similar to "this" in Java

class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func speak() {
        print("I'm a \(name)")
    }
}

class Dog : Animal {
    override func speak() {
        print("Hello from Dog class")
    }
}

let dog = Dog(name: "John")
dog.speak()

class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func introduce() {
        print("I'm \(name)")
    }
}

let person = Person(name: "John")
person.introduce()

person.name = "Doe"
person.introduce()


//Protocols
protocol Human {
    func introduce()
}

struct Person1: Human {
    func introduce() {
        print("Hello from Person")
    }
}

let person1 = Person1()
person1.introduce()


protocol Driveable {
    func drive()
}

class Car: Driveable {
    func drive() {
        print("This is a Car")
    }
}

let car = Car()
car.drive()
