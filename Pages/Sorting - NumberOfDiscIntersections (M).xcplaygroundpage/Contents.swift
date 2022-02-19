//: [Previous](@previous)

import Foundation


// Number Of Disc Intersections - Medium - Sorting Lesson 6

/*
 We draw N discs on a plane. The discs are numbered from 0 to N − 1. An array A of N non-negative integers, specifying the radiuses of the discs, is given. The J-th disc is drawn with its center at (J, 0) and radius A[J].

 We say that the J-th disc and K-th disc intersect if J ≠ K and the J-th and K-th discs have at least one common point (assuming that the discs contain their borders).

 The figure below shows discs drawn for N = 6 and A as follows:

   A[0] = 1
   A[1] = 5
   A[2] = 2
   A[3] = 1
   A[4] = 4
   A[5] = 0


 There are eleven (unordered) pairs of discs that intersect, namely:

 discs 1 and 4 intersect, and both intersect with all the other discs;
 disc 2 also intersects with discs 0 and 3.
 Write a function:

 public func solution(_ A : inout [Int]) -> Int
 that, given an array A describing N discs as explained above, returns the number of (unordered) pairs of intersecting discs. The function should return −1 if the number of intersecting pairs exceeds 10,000,000.

 Given array A shown above, the function should return 11, as explained above.
 
 */

//O(N*log(N)) or O(N)
func solution( _ A : [Int]) -> Int {
    
    //if there is more than 10_000_000 intersections -> -1
    
    //Intersection: J != K && J-th and K-th disc have at least one common point
    
    // A[0] = 1 will have points:             -1,_0_ , 1
    // A[1] = 5 will have points: -4, -3, -2, -1, 0,  _1_, 2,  3,  4,  5, 6                     //6
    // A[2] = 2 will have points:                 0,   1, _2_, 3,  4                            //4
    // A[3] = 1                                            2, _3_, 4                            //3
    // A[4] = 4                                   0,   1,  2,  3, _4_, 5, 6, 7, 8               //5
    // A[5] = 0                                                       _5_                       //3
    //                                                                                    total: 21
    
    
    //#1 Create arrays with starting poins and ending points for each disk
    var diskStartPoits : [Int] = []
    var disksEndPoints : [Int] = []
    
    for (i, disk) in A.enumerated() {
        let startP = i - disk
        diskStartPoits.append(startP)
        let endP = i + disk
        disksEndPoints.append(endP)
    
    }
    
    //#2 Sort them
    let sortedStaetingPoints = diskStartPoits.sorted(by: <)
    let sortedEndPoints = disksEndPoints.sorted(by: <)
    
    
    //items to track
    var iteration = 0
    var openDiscs = 0
    var intersections = 0
    var i = 0
    
    
    //#3 for EACH starting point check if its <= agains the end points
    while i < sortedStaetingPoints.count {
//        print("p: \(sortedStaetingPoints[i]), endPpint: \(sortedEndPoints[iteration] )")
        
        //if current starting point is smaller than end i-th end point then increment open disks
        //if you there are open disks then increment the intersections by the number of open disks
        if sortedStaetingPoints[i] <= sortedEndPoints[iteration] {
            
            if openDiscs > 0 {
                intersections += openDiscs
            }
            openDiscs += 1
            i += 1
            //if starting point is larger than end point - then move to the next end point and close a disk
        } else {
            iteration += 1
            openDiscs -= 1
        }
        
        //just a requirment when intersections exceeds large number
        if intersections > 10_000_000{
            return -1
        }
        
    }
    
    
    
    return intersections
}


import XCTest

class NumberOfDiscIntersectionsTests : XCTestCase {
    
    func testExample(){
        let input = [1,5,2,1,4,0]
        XCTAssertEqual(solution(input), 11, "❌ Failed Sample test.")
    }
    
    
}


NumberOfDiscIntersectionsTests.defaultTestSuite.run()






//: [Next](@next)
