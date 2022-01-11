//: [Previous](@previous)

import Foundation

//time complexity O(n + M)
//need to se if this can be done more efficintly getting time oout error on extremeley large numbers - score 88%
public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
   
    //so were given a number N which determines the size of our counter array
    // then were ginen an array with instructoions
    // there are two operations that needs to be performed
    // if the number from instruntion array is smallet than N the we just add 1 to the given counter
    // if the number from instrunctin array is larger than N the we need to set all the counter to the highest one
    
    var counters : [Int] = Array.init(repeating: 0, count: N)
    var highestCounter: Int = 0
    
    for instNumber in A {
        if instNumber <= N {
            //increase by 1
            counters[instNumber - 1] += 1
            if counters[instNumber - 1] > highestCounter {
                highestCounter = counters[instNumber - 1]
            }
            print(counters)
            
        }
        
        if instNumber > N {
            counters = Array.init(repeating: highestCounter, count: N)
            print(counters)
        }
    }
    return counters
}




import XCTest


class MaxCounterTest : XCTestCase {
    
    func testSimpleExample() {
        var arrOfCounters = [3,4,4,6,1,4,4]
        let n = 5
        XCTAssertEqual(solution(n, &arrOfCounters), [3,2,2,4,2], "❌ Failed on simple test")
    }
    
    //What could be possible edge cases?

}

MaxCounterTest.defaultTestSuite.run()

//: [Next](@next)
