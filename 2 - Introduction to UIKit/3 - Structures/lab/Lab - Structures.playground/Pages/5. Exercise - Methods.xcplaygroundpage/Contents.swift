/*:
 ## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func description() -> Any {
        return "The title of the book is \(title) which is written by \(author). There are \(pages) pages in this book and the price currently is $\(price)."
    }
}
let myBook = Book(title: "Angels and Demons", author: "Dan Brown", pages: 616, price: 9.99)
let description = myBook.description()
print(description)
/*:
 A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
 */
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func like() {
        likes += 1
    }
}

var myPost = Post(message: "I like eggs", likes: 0, numberOfComments: 0)
print("My post message \"\(myPost.message)\" currently has \(myPost.likes) likes. It also has \(myPost.numberOfComments)")
myPost.like()
myPost.like()
print("My post message \"\(myPost.message)\" currently has \(myPost.likes) likes. It also has \(myPost.numberOfComments)")
//: [Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
