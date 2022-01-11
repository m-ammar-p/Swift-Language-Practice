import UIKit

class Shape {
    
    var numberOfSides = 0
    
    func simpleDescription() -> String {
        
        return "A shape with \(numberOfSides) sides"
    }
}

// Instance of a Class
var shape = Shape()

shape.numberOfSides = 7

var shapeDescription = shape.simpleDescription()

print(shapeDescription)
print("---------------------")

//////////////////////////////////
class NameShape {
    
    var numberOfSides: Int = 0
    
    var name: String
    
    init(name: String) {
        
        self.name = name

    }
    
    func simpleDescription() -> String {
        
        return "A shape with \(numberOfSides) sides"
    }
}

var obj = NameShape.init(name: "Rectangle")

obj.numberOfSides = 8

var ans = obj.simpleDescription()

print(ans)
print("---------------------")

///////////////////////////////////

class Square: NameShape {
    
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        
        self.sideLength = sideLength
        
        super.init(name: name)
        
        numberOfSides = 4
        
    }
    
    func area() -> Double {
        
        return sideLength *  sideLength
    }
    
    override func simpleDescription() -> String {
        
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5.2, name: "My Test Square")

var a = test.area()
var b = test.simpleDescription()

print(a)
print(b)
print("---------------------")

//////////////////////////////////

class EquilateralTriangle: NameShape {
    
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        
        self.sideLength = sideLength
        
        super.init(name: name)
            
            numberOfSides = 3
    }
    
    
    var perimeter: Double {
        
        get {
            return 3.0 * sideLength
        }
        
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        
        return "An equilateral triangle with sides of  length \(sideLength)."
    }
    
}

var triangle  = EquilateralTriangle(sideLength: 3.1, name: "A Triangle")

print(triangle.perimeter)

triangle.perimeter = 9.9

print(triangle.sideLength)

print(triangle.perimeter)
print("---------------------")

//////////////////////////////////

class TriangleAndSquare {
    
    var triangle: EquilateralTriangle {
        
        willSet {
            
            square.sideLength = newValue.sideLength
            
        }
    }
    
    var square: Square {
        
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        
        square = Square(sideLength: size, name: name)
        
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
    
}/// end class TriangleAndSquare




















