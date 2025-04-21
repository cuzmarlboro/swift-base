// 1. 比较两个字符串原理是什么？
import UIKit

let yes = true
let no = false
print(type(of: yes))

// 条件判断
var isStndentPassExam = false

if isStndentPassExam {
    print("通过考试了")
}else{
    print("没通过考试了")
}

// 比较运算符
var stndentGrade = 90
let stndentPassGrade = 60

if stndentGrade>=stndentPassGrade {
    print("通过考试了")
}else{
    print("没通过考试了")
}

// 比较字符串
var a = "aA"
var A = "AA"
print(a>A)
