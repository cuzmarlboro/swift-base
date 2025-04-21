import UIKit

// 创建方法
func greeting(){
    print("hello")
}

greeting()

// 方法入参
//let passingGrade = 60
let student1Grade = 90

func isStudentPassdeCourse(studentGrade: Int, passingGrade: Int = 60 ){ // 注意：不能修改参数，因为他是 let 常量
    print(studentGrade >= passingGrade ? "通过" : "没通过")
}


isStudentPassdeCourse(studentGrade:student1Grade)
isStudentPassdeCourse(studentGrade:student1Grade, passingGrade: 99)


// 方法返回值
func sayHello()->Void{
    print("hello")
}

func isEven(number: Int) -> Bool {
    return number % 2 == 0
}

// 返回值用元组去装
func findMinAndMaxInArray(arr:[Int]) -> (min: Int, max: Int){
    let min = arr.min() ?? 0
    let max = arr.max() ?? 0
    return (min, max)
}

// 返回可选类型
func getIndexOfElementInArray(arr:[Int], element:Int) -> Int?{
    if let index = arr.firstIndex(of: element){
        return index
    }else{
        return nil
    }
}

sayHello()
isEven(number: 2)
let (min, max) =  findMinAndMaxInArray(arr: [1,2,3,4])
print(min)
print(max)
getIndexOfElementInArray(arr: [1,2,3,4], element:5)

