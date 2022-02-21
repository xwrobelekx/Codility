//: [Previous](@previous)

import Foundation




/*
 
 //This challenge is for stacks and queues
 
 A string S consisting of N characters is considered to be properly nested if any of the following conditions is true:

 S is empty;
 S has the form "(U)" or "[U]" or "{U}" where U is a properly nested string;
 S has the form "VW" where V and W are properly nested strings.
 For example, the string "{[()()]}" is properly nested but "([)()]" is not.

 Write a function:

 public func solution(_ S : inout String) -> Int

 that, given a string S consisting of N characters, returns 1 if S is properly nested and 0 otherwise.

 For example, given S = "{[()()]}", the function should return 1 and given S = "([)()]", the function should return 0, as explained above.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [0..200,000];
 string S consists only of the following characters: "(", "{", "[", "]", "}" and/or ")".
 */


//Big O(n)

public func solution(_ S : String) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    var stock : [Character] = []

    for char in S {
        if char == "(" || char == "[" || char == "{" {
            stock.append(char)
        } else if char == ")" || char == "]" || char == "}" {
            if stock.isEmpty {
                return 0
            }
          var last = stock.removeLast()
            
            if last == "(" {
                last = ")"
            } else if last == "["{
                last = "]"
            } else if last == "{" {
                last = "}"
            }
            
          if last != char {
              return 0
          }

        }
    }
    
    if stock.isEmpty {
        return 1
    } else {
        return 0
    }
}



import XCTest

class BracketTests: XCTestCase {
    
    func testExample(){
        let input = "{[()()]}"
        let sut = solution(input)
        let output = 1
        XCTAssertEqual(sut, output, "Failed Sample test")
    }
    
    func testOnlyOpenBrackets(){
        let input = "{{{{"
        let sut = solution(input)
        let output = 0
        XCTAssertEqual(sut, output, "Failed On Only Open Brackets test")
    }
}

BracketTests.defaultTestSuite.run()

//: [Next](@next)
