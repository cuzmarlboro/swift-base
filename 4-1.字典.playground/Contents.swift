// 1. 字典和元组有什么区别？哪一种更像 js 里面的对象？
import UIKit

// 创建字典（字典是无序的）
var dic : [String: Int] = [:]
dic["Jame"] = 21
dic["Rose"] = 21
dic["Jame"] = 23
print(dic)

var dic2 = [String: Int]()
dic2["Jame"] = 21
dic2["Rose"] = 21
dic2["Jame"] = 23
print(dic2)

// 字典的遍历
// 方法一，遍历 dic 赋值给元组 (key, value)
for (key, value) in dic {
    print(key, value)
}

// 方法二，同样是通过元组来接收便利的值
dic.forEach({
    (key, value) in
    print(key, value)
})

// 方法三，遍历字典的 key
for key in dic.keys {
    print(key , dic[key]!)
}

// 方法三，遍历字典的 value
for value in dic.values{
    print(value)
}

// 访问字典的元素的值
let firstStudent = dic["Jame"]

// 解包访问
//if let firstStudent = dic["Jame"]{
//    print(firstStudent)
//}

// 通过给默认值的方式解包访问
print("firstStudent", firstStudent ?? "11")

// 提前给好默认值方式访问
let twoStudent = dic["Rose", default: 24]
print("twoStudent", twoStudent)


// 判断字典是否为空
dic.isEmpty

// 获取字典有多少个键值对
dic.count

// 判断字典是否有某个键值对
if dic.contains(where: { $0.key == "Jame" }){
    print("有的")
}
