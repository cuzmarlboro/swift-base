// 1. 什么是 swift 的可选类型变量，作用是什么？
// 2. 什么是可选类型变量的解包？
// 2. 什么事隐式解包可选类型变量？

import UIKit

// 创建可选类型变量，默认值 nil，类似 js 的 null，可选类型是不支持类型推断的
var perName: String?
perName = "wangcai"

// 可选类型变量适用任意类型
var optionalInt: Int? = 10
//print(optionalInt) // 打印 Optional(10)
//optionalInt = nil

// 必须对可选类型变量解包才能进行操作
// Value of optional type 'Int?' must be unwrapped to a value of type 'Int'
// print(optionalInt + 10)


// 解包方法一：if语句，重写赋值
if let optionalInt = optionalInt {
    print(optionalInt)
}

// 解包方法二：强制解包
print(optionalInt!)

// 解包方法三：创建隐式可选类型变量
var optionalDouble: Double! = 12.3
print(optionalDouble + 0.2)

// 解包方法四：提供默认值
print(optionalInt ?? 0 + 10)
