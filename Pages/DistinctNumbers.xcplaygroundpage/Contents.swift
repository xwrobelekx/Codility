//: [Previous](@previous)

import Foundation

/*
 
 Write a function

 public func solution(_ A : inout [Int]) -> Int

 that, given an array A consisting of N integers, returns the number of distinct values in array A.

 For example, given array A consisting of six elements such that:

  A[0] = 2    A[1] = 1    A[2] = 1
  A[3] = 2    A[4] = 3    A[5] = 1
 the function should return 3, because there are 3 distinct values appearing in array A, namely 1, 2 and 3.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [0..100,000];
 each element of array A is an integer within the range [−1,000,000..1,000,000].
 
 */

//Big  O(N*log(N)) or O(N)


public func solution(_ A : inout [Int]) -> Int {
    return Set(A).count
}


//Example test:


import XCTest


class DistinctNumbersTest : XCTestCase{
    func testExample(){
        var input = [2, 1, 1, 2, 3, 1]
        
        XCTAssertEqual(solution(&input), 3, "Failed on example test")
    }
}

DistinctNumbersTest.defaultTestSuite.run()



//: [Next](@next)
