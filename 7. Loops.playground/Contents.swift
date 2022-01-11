
import UIKit

var n = 2

while n < 100 {
    n *= 2
}
print(n)

print("----------------------------")

var m = 2

repeat {
    
    m *= 2
} while(m < 100)

print(m)
print("----------------------------")

var total = 0

for i in 0..<4 {
    
    print("\(i) i")
   
    total += i
     print(total)
}
print(total)



