/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var items: [Any] = [3, "Cory", 23.7, true, 5.5, 99, 22.7, 66, "parm", "george", false]
print(items)
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in items {
    if let integer = item as? Int {
        print("The integer has a value of \(integer)")
    } else if let double = item as? Double {
        print("The double as a value of \(double)")
    } else if let string = item as? String {
        print("The string is \(string)")
    } else if let boolean = item as? Bool {
        print("The boolean is \(boolean)")
    }
}
/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
let itemsTwo: [String: Any] = ["String": "hello", "Double": 5.7, "Integer": 99, "Boolean": true]
print(itemsTwo)
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0
for (_, value) in itemsTwo {
    if let double = value as? Double {
        total += double
    } else if let integer = value as? Int {
        total += Double(integer)
    } else if let string = value as? String {
        total += 1
    } else if let boolean = value as? Bool {
        if boolean {
            total += 2
        } else {
            total -= 3
        }
    }
}
print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0
for (_, value) in itemsTwo {
    if let double = value as? Double {
        total2 += double
    } else if let integer = value as? Int {
        total2 += Double(integer)
    } else if let string = value as? String {
        if let integer = Int(string) {
            total2 += Double(integer)
        }
    }
}
print(total2)
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
