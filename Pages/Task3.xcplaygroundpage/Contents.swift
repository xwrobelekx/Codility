//: [Previous](@previous)

import Foundation

//func solution(sum: Double) -> [Double] {
//    
//    let bills = [50, 20, 10, 5, 1, 0.25, 0.10, 0.05, 0.01]
//    var output : [Double] = []
//    var currentSum = sum
//    var i = 0
//    
//    while currentSum != 0 && i < bills.count{
//    let currentBill = bills[i]
//         if currentSum - currentBill >= 0{
//             output.append(currentBill)
//             currentSum -= currentBill
//         } else {
//             i += 1
//         }
//       
//        
//    }
//
//    return output}
//
//solution(sum: 21.46)
//
//
//func solution(values: [Double], n: Int) -> Double {
//    // Type your solution here
//    let s = Set(values).sorted()
//        if n < s.count {
//        return s[n - 1]
//    } else {
//        return -1
//    }
//}
//
//
//func angles(_ a: String)-> String {
//    
//    var output = ""
//    var sum = 0
//    for char in a {
//        if char == ">" {
//            sum -= 1
//            output = "<" + output
//        } else if char == "<" {
//            sum += 1
//        }
////        if sum <= 0 {
////            output += "<"
////        }
//        output += String(char)
//    }
//    
//    if sum > 0 {
//    for i in 0..<sum {
//        output += ">"
//    }
//    }
//    
//    return output
//}
//
//angles("><")



/*
 
 
 angles: "<<>>>>><<<>>"
 Expected Output:
 "<<<<<>>>>><<<>>>"
 Output:
 "<<<><><><><><<<<><>"
 
 
 
 Input:
 angles: ">>"
 Expected Output:
 "<<>>"
 Output:
 "<><>"
 
 
 
 Input:
 angles: "<>>>>><<"
 Expected Output:
 "<<<<<>>>>><<>>"
 Output:
 "<<><><><><><<"
 
 
 Input:
 angles: ">><>><>><<<<>><<<<<><>>>><><<<><<><>>"
 Expected Output:
 "<<<<>><>><>><<<<>><<<<<><>>>><><<<><<><>>>>>>>"
 Output:
 "<><><<><><<><><<<<<><><<<<<<><<><><><><<><<<<><<<><<><>>"
 
 
 */


//: [Next](@next)
