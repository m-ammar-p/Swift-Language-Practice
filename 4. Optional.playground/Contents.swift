
import UIKit

var optionalString: String? = "Hello "

print(optionalString == nil)

var optionalName: String? = "Jhony"

var greeting = "Hello!"

if let name = optionalName {
    
    greeting = "Hello \(name)"
    print(greeting)
}
else {
    
    greeting = "No one came!"
    print(greeting)
}

print("----------------------------")

// Default Value

let nickName: String? = nil

let fullName: String = "Harry Poter"

let informalGreeting = "Hi \(nickName ?? fullName)"

print(informalGreeting)








