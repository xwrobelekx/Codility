//: [Previous](@previous)

import Foundation


public func solution(_ A : inout [Int]) -> Int {
    var minimalAverage = (A[0] + A[1] / 2)
    
    //slice contains at least 2 elemetns
    //pair of (P,Q) - indexes ( a range of the slice)
    // P >= 0
    // Q > P
    // N > Q   N - is the array count


    // take tha range from P...Q add the up and divide by its count /(Q-P + 1)

    //goal is to find the starting point where the average is minimal

    //Find P

    //Need to fins some kind of formula because with loops this would get nasty


    //This var will hold the minimal value, were gone stat by comparing the first two values in the array
    //var minimalAverage = (A[0] + A[1]) / 2

    //sum up the whole array
    //then divide that array by its count to see the average of the whole array

    //then i can go back


    // 4-2, 4-2-2, 4-2-2-5, 4-2-2-5-1, 4-2-2-5-1-5, 4-2-2-5-1-5-8
    // 2-2, 2-2-5, 2-2-5-1, 2-2-5-1-5, 2-2-5-1-5-8
    // 2-5, 2-5-1, 2-5-1-5, 2-5-1-5-8
    // 5-1, 5-1-5, 5-1-5-8
    // 1-5, 1-5-8
    // 5-8

    //1hr and i got nothing
    //you would need like 3 nested loops to loop thru it
    // i was trying to figure out a formulat to do this with one loop



    //return the starting point where the minimal average begins
    
    
    
    
    //the range is moving 0.....A.count 
    
    
    
    
    
//    var index = 0
    
//    for indexP in 0...A.count - 1 {
//
//        if indexP < A.count - 1 {
//            for indexQ in (indexP + 1)...A.count - 1 {
//                print("indexP: \(indexP), indexQ: \(indexQ)")
//                var average = 0
//                var count = 0
//                A[indexP...indexQ].forEach { number in
//                    average += number
//                    count += 1
//                }
//
//              let difference = average / count
//                if difference < minimalAverage {
//                    minimalAverage = difference
//                    print(indexP)
//                    index = indexP
//                }
//            }
//        }
//
//
//    }
    
    
    
   
    
    print("\(A[2...4])")
    
    
    return 1
}



import XCTest

class MinAvgTwoSliceTest : XCTestCase {
    
    func testSimpleExample() {
        var arr = [4,2,2,5,1,5,8]
        XCTAssertEqual(solution(&arr), 1, "❌ Failed on a simple test")
        
    }
    
    
}

MinAvgTwoSliceTest.defaultTestSuite.run()



//: [Next](@next)
