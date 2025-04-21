import UIKit


// while 循环
var i = 5

while i < 5 {
    print(i)
    i += 1
}

print("==========")


// repeat-while 循环
// 执行循环体之前会首先先执行一次，也就是在执行表达式之前，循环体已经被执行一次了
i = 5
repeat{
    print(i)
    i += 1
} while i < 5
