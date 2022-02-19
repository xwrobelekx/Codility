//: [Previous](@previous)

import Foundation


/*
 Given an array of numbers find the max profit you can make from buying and later selling the stock
 
 Example:
 [6, 0, -1, 10]
 should return 11 because if you buy when the stock is -1 and sell when its 10 you would make max profit of 11
 */

func maxProfit(_ prices: [Int]) -> Int {
    
    var buyPrice = prices[0]
    var sellPrice = prices[0]
    
    var maxProfit = sellPrice - buyPrice
    
    var buyIndex = 0
    var sellIndex = 0
    
    while sellIndex < prices.count {
        
        buyPrice = prices[buyIndex]
        sellPrice = prices[sellIndex]
        let currentProfit = sellPrice - buyPrice
        
        if buyPrice > sellPrice {
            buyIndex += 1
        } else {
            maxProfit = max(currentProfit, maxProfit)
            sellIndex += 1
        }
        
    }

    return maxProfit
    
}


import XCTest

class MaxProfitTests: XCTestCase{
    
    func testExample(){
        let prices = [6, 0, -1, 10]
        XCTAssertEqual(maxProfit(prices), 11, "Failed sample test.")
    }
    
}

MaxProfitTests.defaultTestSuite.run()


//: [Next](@next)
