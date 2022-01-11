import UIKit



//Find a binary gap

import Foundation



/*
Fails:

 medium: n = 561892 = 10001001001011100100_2 // got 4 expected 3
 n=74901729=100011101101110100011100001  // got 6 expected 4
 n=1376796946=1010010000100000100000100010010_2 //got 8 expected 5
 
 

*/
public func solution(_ N : Int) -> Int {
    
    //convert the number to binary
    let binaryString = String(N, radix: 2)
    
    // some var that will keep the count of the gap
    var binaryGap = 0
    
    //some kind of loop that will go thru the numbdr to check for the binary gap
    
    //binary gap -> 1001 -> 2
    //100 -> 0
    //10001001 -> 3
    var temporatyGap = 0
    var isOne = false
    
    for c in binaryString {
        
        if c == "1" && isOne == false {
            isOne = true
        } else if c == "0" && isOne == true {
            temporatyGap += 1
        } else if c == "1" && isOne == true{
            if temporatyGap > binaryGap {
                binaryGap = temporatyGap
               
            }
            temporatyGap = 0
        }
        
    }
    return binaryGap
}



solution(561892)


func converToBinary(n: Int) -> String {
    return String(n, radix: 2)
}





import XCTest


class BinaryGapTests: XCTestCase {
    
    
    func testConversionToBinary() {
        
        let conversion1 = converToBinary(n: 561892)
        let conversion2 = converToBinary(n: 74901729)
        let conversion3 = converToBinary(n: 1376796946)
        
        
        XCTAssertEqual(conversion1, "10001001001011100100")
        XCTAssertEqual(conversion2, "100011101101110100011100001")
        XCTAssertEqual(conversion3, "1010010000100000100000100010010")
    }
    
    
    func testOutput() {
        //arrange
        let solution1 = solution(561892)
        let solution2 = solution(74901729)
        let solution3 = solution(1376796946)
        
        
        //assert
        XCTAssertEqual(solution1, 3)
        XCTAssertEqual(solution2, 4)
        XCTAssertEqual(solution3, 5)
        
    }
    
}



BinaryGapTests.defaultTestSuite.run()
