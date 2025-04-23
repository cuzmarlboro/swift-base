import UIKit
import Foundation  // UserDefaults 属于 Foundation 框架

// 获取 UserDefaults 的实例
let userDefaults = UserDefaults.standard

// 存储字符串数据
userDefaults.set("value", forKey: "key")

// 读取字符串数据
let value = userDefaults.string(forKey: "key")
print(value ?? "")

// 存储数组
userDefaults.setValue([1, 2, 3], forKey: "array")

// 读取数组类型数据
let array = userDefaults.array(forKey: "array")
print(array ?? [])

// 存储字典
userDefaults.set(["name": "11"], forKey: "Dic")
let dic = userDefaults.dictionary(forKey: "Dic")

// 删除 UserDefaluts 数据
userDefaults.removeObject(forKey: "key")
