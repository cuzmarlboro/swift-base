import UIKit

// 创建集合
var emptySet: Set<Int> = []

// 集合的插入和移除
emptySet.insert(1)
emptySet.insert(2)
emptySet.insert(1) // Set 中的元素是唯一的，所以这次添加是不成功的
let remove1 = emptySet.remove(2)
print(remove1)
let remove2 = emptySet.remove(3)
print(remove2)


var set1: Set<Int> = [1, 2 ,3]
var set2: Set<Int> = [2 ,3, 4]

// 获取两个集合的交集
print(set1.intersection(set2))

// 获取两个集合的差集
print(set1.symmetricDifference(set2))

// 获取两个集合的并集
print(set1.union(set2))

// 👆三个方法都不会修改原来的集合，也就是set1是不会发生改变的
// 👇三个方法会改变原来的集合，也就是set1会发生改变


// 获取两个集合的交集
//print(set1.formIntersection(set2))

// 获取两个集合的差集
//print(set1.formSymmetricDifference(set2))

// 获取两个集合的并集
//print(set1.formUnion(set2))

// 获取集合中元素个数
set1.count

// 检查集合是否包含某个元素
set1.contains(1)
