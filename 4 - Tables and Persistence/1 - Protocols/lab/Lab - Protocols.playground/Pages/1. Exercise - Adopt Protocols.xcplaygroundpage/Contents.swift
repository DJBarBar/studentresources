/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
class Human: CustomStringConvertible, Equatable, Comparable, Codable {
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    var description: String {
        return "Human(name: \(name), age: \(age))"
    }
    
    static func ==(lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
        
    }
    
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
    
}
let firstHuman = Human(name: "Cory Barton", age: 27)
let secondHuman = Human(name: "Courtney Barton", age: 23)
let thirdHuman = Human(name: "Dan Barton", age: 60)
let fourthHuman = Human(name: "Janet Barton", age: 58)
let fifthHuman = Human(name: "Rebecca Barton", age: 18)
/*:
 Make the `Human` class adopt the `CustomStringConvertible`. Print both of your previously initialized `Human` objects.
 */
print(firstHuman)
print(secondHuman)
/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
 */
print(firstHuman == secondHuman)
print(firstHuman != secondHuman)
/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */
let people = [firstHuman, secondHuman, thirdHuman, fourthHuman, fifthHuman]
let sortedPeople = [people.sorted(by: <)]
print(sortedPeople)
/*:
 Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
 */
import Foundation
let jsonEncoder = JSONEncoder()
if let jsonData = try? jsonEncoder.encode(firstHuman), let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
}
//: page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
