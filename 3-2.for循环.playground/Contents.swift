// 1. 什么是 range 数据类型？
// 2. where 关键字有什么作用？
// 3. enumerated() 方法是什么原理？
import UIKit

var count = 5

// 创建 range
var rangeExample = 1...count // 1到5的闭合区间
var halfRangeExample = 1..<count // 1到5的半开区间

// 1 到 10 总和
var sum = 0
for item in 1...10{
    // 注意：item 是一个常量，不能取改变 item 的值
    sum += item
}


// 1 到 10 偶数总和
var sum2 = 0
for item in 1...10 where item % 2 == 0{
    // 注意：item 是一个常量，不能取改变 item 的值
    sum2 += item
}


// 遍历集合
var array = [1,2,3,4,5]

// 方法1：直接遍历元素
for item in array{
    print(item)
}

// 方法2：带索引遍历（enumerated()）
for (index, item) in array.enumerated(){
//    print(index, item)
}

// 方法3：函数式遍历（forEach）
array.forEach{ item in print(item) }

// 方法4：使用 indices 遍历索引，indices 就是 0..<array.count 的 range 数据
for index in array.indices {
    print("Index: \(index), Value: \(array[index])")
}
