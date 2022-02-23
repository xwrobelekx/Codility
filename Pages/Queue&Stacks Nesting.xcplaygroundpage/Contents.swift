//: [Previous](@previous)

import Foundation

/*
 A string S consisting of N characters is called properly nested if:

 S is empty;
 S has the form "(U)" where U is a properly nested string;
 S has the form "VW" where V and W are properly nested strings.
 For example, string "(()(())())" is properly nested but string "())" isn't.

 Write a function:

 public func solution(_ S : inout String) -> Int

 that, given a string S consisting of N characters, returns 1 if string S is properly nested and 0 otherwise.

 For example, given S = "(()(())())", the function should return 1 and given S = "())", the function should return 0, as explained above.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [0..1,000,000];
 string S consists only of the characters "(" and/or ")".
 */

public func solution(_ S : String) -> Int {
    if S == "" { return 1}
    var stack = [Character]()

    for char in S {
        var opposite = ""
        if char == ")" {
            opposite = "("
        }
        
        if stack.isEmpty {
            stack.append(char)
        } else if String(stack[stack.count - 1]) == opposite{
            stack.removeLast()
        } else {
            stack.append(char)
        }
    }

    if stack.isEmpty{
        return 1
    } else {
        return 0
    }
}



import XCTest


class ProprtlyNestsTests : XCTestCase {
    
    func testExample(){
        let input = "(()(())())"
        XCTAssertEqual(solution(input), 1, "❌Failed on example test one")
    }
    
    func testExample2(){
        let input = "())"
        XCTAssertEqual(solution(input), 0, "❌Failed on example test two")
    }
    
    func testExample3(){
        let input = ")("
        XCTAssertEqual(solution(input), 0, "❌Failed on example test three")
    }
    
    
    func testExample4(){
        let input = "()"
        XCTAssertEqual(solution(input), 1, "❌Failed on example test three")
    }
    
    
}


ProprtlyNestsTests.defaultTestSuite.run()






//: [Next](@next)
