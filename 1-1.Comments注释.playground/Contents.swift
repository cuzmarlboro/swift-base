// 1. xcode Playground 是什么？有什么作用？
// 2. 为什么引入了 UIKit，就不需要引入 Foundation
// 3. 什么是 swift 的类型推断
// import UIKit
import Foundation

// 单行注释
/* 多行注释 */

// 定义变量使用 var
// var greeting = "Hello, playground"
// greeting = "Hello World"

// 定义常量使用 let，常量不可修改
//let greeting = "Hello, playground"
//greeting = "Hello World"

// swift 类型推断会自动推断 number 类型是 Int
var number = 1
type(of: number)

// 程序会报错 Cannot assign value of type 'Double' to type 'Int'
//number = 2.0

