
import UIKit

var numbers = [20, 19, 7, 12]

var ans = numbers.map({ (number: Int) -> Int in
    
    let result = 3 * number
    
    return result
    
})

print(ans)

print("--------------------------")

let mappedNumbers = numbers.map ({ number in 3 * number

})
print(mappedNumbers)
print("--------------------------")

// “Rewrite the closure to return zero for all odd numbers.”

var ans2 = numbers.map({ (number: Int) -> Int in
    
    if number % 2 != 0 {
        
        return 0
        
    }
   
    return number
})
print(ans2)
print("--------------------------")

// Sorting

let sortedNumbers = numbers.sorted{$0 < $1}


print(sortedNumbers)









