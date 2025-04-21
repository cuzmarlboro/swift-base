// 1. swift 类中的 self 和 js 中的 this 有什么区别?
// 2. CustomStringConvertible 有什么作用？
// 3. swift 中的 \() 和 js 中的模版字符串 ${} 有什么区别？
import UIKit

class Student: CustomStringConvertible {
    var name: String
    var age: Int
    var description: String{
        return "Student: [\(name),\(age)]"
    }
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func sayHi(){
        print("\(name) hi")
    }
}

let jame = Student(name: "jame", age: 23)

print(jame)

let jameCopy = jame
jameCopy.age = 25

print(jame)

// 深拷贝
let jameCopy2 = Student(name: jame.name, age: jame.age)
jameCopy2.age = 28

print(jame)
