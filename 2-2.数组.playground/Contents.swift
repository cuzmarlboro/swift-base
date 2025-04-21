import UIKit

var greeting = "Hello, playground"

// 创建数组方法1  (数组是有类型推断的)
var intArray = [1,2,3]

// 创建数组方法2
var int2Array: [Int] = [1,2,3]

// 创建空数组方法1 （空数组必须先声明类型）
var int3Array:[Int] = []

// 创建空数组方法2
var int4Array = [Int]()

// 通过索引下表访问数组元素
intArray[0]
intArray[1]
intArray[2]

// 访问数组最后一个元素
intArray[intArray.count - 1]

// 给数组添加元素
intArray.append(4)
intArray.append(5)
intArray += [6, 7]
print(intArray)

// 获取数组前n个元素
let firstThree = intArray.prefix(3) // [1,2,3]
print(firstThree)

// 获取数组后n个元素
let lastTwo = intArray.suffix(2) // [6,7]
print(lastTwo)

// 获取数组某一段元素
let midArray = intArray[1...3]
print(midArray)

// 数组插入元素
intArray.insert(0, at:0)
print(intArray)

// 删除某一个元素（会返回被删除的值）
intArray.remove(at: 0)
print(intArray)

// 删除数组所有元素
intArray.removeAll()
print(intArray)

// 判断数组是否为空
intArray.isEmpty

// 返回数组第一个和最后一个元素（返回的是可选类型）
intArray.first
intArray.last

// 数组是否包含某个元素
intArray.contains(1)

// 数组交换两个下标的元素
intArray = [1, 2]
intArray.swapAt(1, 0)
print(intArray)
