//: [Previous](@previous)

import Foundation

/*
 A non-empty array A consisting of N integers is given. The product of triplet (P, Q, R) equates to A[P] * A[Q] * A[R] (0 ≤ P < Q < R < N).

 For example, array A such that:

   A[0] = -3
   A[1] = 1
   A[2] = 2
   A[3] = -2
   A[4] = 5
   A[5] = 6
 contains the following example triplets:

 (0, 1, 2), product is −3 * 1 * 2 = −6
 (1, 2, 4), product is 1 * 2 * 5 = 10
 (2, 4, 5), product is 2 * 5 * 6 = 60
 Your goal is to find the maximal product of any triplet.

 Write a function:

 public func solution(_ A : inout [Int]) -> Int
 that, given a non-empty array A, returns the value of the maximal product of any triplet.

 For example, given array A such that:

   A[0] = -3
   A[1] = 1
   A[2] = 2
   A[3] = -2
   A[4] = 5
   A[5] = 6
 the function should return 60, as the product of triplet (2, 4, 5) is maximal.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [3..100,000];
 each element of array A is an integer within the range [−1,000..1,000].
 */


//Big O(N * log(N))

func maxProductOfThree(_ arr: [Int] ) -> Int {
    
    //find 3 largests numbers or in case there are negative numbers then find 2 smallest and 1 largest, and the pick the max value ot of them
    
    var output = 1
    let sorted = arr.sorted(by: >)
    output = max(sorted[0] * sorted[1] * sorted[2], sorted[0] * sorted[sorted.count - 1] * sorted[sorted.count - 2])
    
    return output
}





import XCTest

class MaxProductOFThreeTests : XCTestCase {
    
    func testExample(){
        let input = [-3, 1, 2, -2, 5, 6]
        XCTAssertEqual(maxProductOfThree(input), 60, "❌ Failed On simple text")
    }



    func testTwoNegativeNumbers(){
        let input = [-3, -2, 5]
        XCTAssertEqual(maxProductOfThree(input), 30, "❌ Failed On two negative numbers")
    }

    func testAllNegativeNums(){
        let input = [-2, -4, -1, -6, -3]
        XCTAssertEqual(maxProductOfThree(input), -6, "❌ Failed On all negative numbers")
    }
    
    func testSomeNegativeNums(){
        let input =  [-5, 5, -5, 4]
        XCTAssertEqual(maxProductOfThree(input), 125, "❌ Failed On some negative numbers")
    }
    
    
    
}

MaxProductOFThreeTests.defaultTestSuite.run()




//: [Next](@next)
