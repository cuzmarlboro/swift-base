import UIKit

struct Rectangle{
    // w、h 是普通属性
    var w: Double
    var h: Double
}

var rectangle = Rectangle(w:10, h:5)
rectangle.w
rectangle.h


struct Circle{
    var radius: Double
    // area 是计算属性
    var area: Double{
        return Double.pi * radius * radius
    }
}

var c = Circle(radius: 10)
c.area
