// 1. 结构体和类有什么区别？什么时候用结构体，什么是否用类？
// 2. 结构体和 js 的什么比较像？
// 3. 类和 js 的类有什么区别？
// 4. 结构体里重写构造函数方法里面 square 关键字是什么意思？
// 5. 结构体中定义 func 前面的 mutating 关键字是什么意思，有什么作用？
// 6. 结构体中定义 func 前面的 static 关键字是什么意思，有什么作用？
// 7. 结构体初始化后返回的是值类型还是引用类型，这两种类型有什么却别？
// 8. 定义结构体时 Equatable 关键字是什么意思，有什么作用？
import UIKit

// 定义结构体
struct Point{
    var x: Double
    var y: Double
}

var point = Point(x: 1, y: 2)

point.x = 10.0
print(point.x)
print(point.y)



// 重写结构体构造函数
struct Size{
    var h: Double
    var w: Double
    init(square side : Double) {
        self.h = side
        self.w = side
    }
}

let size = Size(square: 5)
// 重写结构体构造函数之后，结构体本身自带的构造函数就会失效，👇使用例子就会报错
//let size2 = Size(h:100,w:200)


// 结构体中定义方法
struct Rentangle: Equatable{
    var h: Double
    var w: Double
    func area() -> Double{
        return h * w
    }
    mutating func hAdd10() {
        h = h + 10
    }
    static func == (r1:Rentangle, r2:Rentangle) -> Bool{
        return r1.h == r2.h && r1.w == r2.w
    }
}

var rentangle = Rentangle(h: 4, w: 4)
rentangle.area()
//rentangle.hAdd10()

// 结构体构造成功返回的是值类型，不是引用类型，赋值给 rentangle2 后，rentangle2 指向的是值，而不是 rentangle
var rentangle2 = rentangle
rentangle2.hAdd10()

print(rentangle.h)
print(rentangle2.h)

print(rentangle == rentangle2)
