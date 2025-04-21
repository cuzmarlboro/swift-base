import UIKit

var floors = [1, 2]
var rooms = [1, 2, 3]

for floor in floors {
    for room in rooms {
        if room == 2 {
            // break; // 退出循环，终止的是内层循环，而不是外层循环
            continue; // 跳过当前循环，直接进入下一次循环
        }
        print("\(floor) - \(room)")
    }
}
