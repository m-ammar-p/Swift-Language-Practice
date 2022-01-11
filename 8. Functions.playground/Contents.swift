//: Playground - noun: a place where people can play

import UIKit


func greet(person: String, day: String) -> String {
    
    
    return "Hello \(person), today is \(day)"
}

var ans = greet(person: "Jhon", day: "Monday")

print(ans)

print("-------------------------")

// “By default, functions use their parameter names as labels for their arguments. Write a custom argument label before the parameter name, or write _ to use no argument label.”

func greet2(_ person: String, on day: String) -> String {
    
    
    return "Hello \(person), today is \(day)"
}

var ans2 = greet2("Jhon", on: "Tuesday")

print(ans2)


