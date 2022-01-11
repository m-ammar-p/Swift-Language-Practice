
import UIKit

func returnFifteen() -> Int {
    
    var y = 10
    
    func add() {
        
        y += 5
    }
    
    add()
    
    return y
}

var ans = returnFifteen()

print(ans)
print("-------------------------------")

// “Functions are a first-class type. This means that a function can return another function as its value”

func makeIncrementer() -> ((Int) -> Int) {
    
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
print(increment(7))
print("-------------------------------")

// “A function can take another function as one of its arguments”

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    
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

var numbers  = [20, 19, 7, 12]

var ans2 = hasAnyMatches(list: numbers, condition: lessThanTen)

print(ans2)












