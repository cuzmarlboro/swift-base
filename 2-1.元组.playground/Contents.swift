import UIKit

// 创建元组，类似 JS 的对象类型
let student: (String, Int) = ("Rose", 90)
 
// 访问元祖
student.0
student.1

// 修改元祖（元祖的类型不可以更改，只有数值可以更改）
var pet: (String, Int) = ("Tony", 2)
pet.1 = 3
pet.0
pet.1

// 给元组中的元素取名字（元组是支持类型推断的）
var person = (name:"JJ", age:20)
person.name
person.age

// 元组快速解包，其实就类似 ES6 的解构赋值
let (name, age) = person
name
age
