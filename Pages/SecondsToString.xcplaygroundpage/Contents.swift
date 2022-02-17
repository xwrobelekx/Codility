//: [Previous](@previous)

import Foundation


public func solution(_ T : Int) -> String {
    
    let hours = T/3600
    let min = (T - (hours * 3600)) / 60
    let seconds = T - ((hours * 3600) + (min * 60))
return "\(hours)h \(min)m \(seconds)s"

}


solution(83643)


import XCTest

class ConvertSecondsToStringHoursTests : XCTestCase {
    
    func testExampleOne(){
        XCTAssertEqual(solution(83643), "23h 14m 3s", "❌Failed on simple test one")
    }
}

ConvertSecondsToStringHoursTests.defaultTestSuite.run()

//: [Next](@next)
