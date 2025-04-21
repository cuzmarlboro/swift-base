import UIKit


// 与 &&
let isSunday = true
let isWarm = true

if isSunday && isWarm {
    print("Today is Sunday and weather is warm")
}

// 或 ||
let hasMoney = false
let hasCreditCard = true
if hasMoney || hasCreditCard {
    print("we can buy")
}

// 非 !
let isRainng = false
if !isRainng {
    print("It is not raining")
}

// 只能给布尔变量做取反操作，否则报错 Cannot convert value of type 'String' to expected argument type 'Bool'
//let str = "str"
//print(!str)
