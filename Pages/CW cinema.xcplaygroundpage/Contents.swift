//: [Previous](@previous)

import Foundation

func movie(card: Double, ticket: Double, perc: Double) -> Int {
    
  //but ticket for $15
  // card for $500
  // first ticket for .9 * ticket price
  //second ticket is 0.9 of that previous ticket and so on
  
  var totalTicketsPrice : Double = 0
  var totalCardAndTicketPrice = card
  var currentTicketPrice = ticket
  var counter = 0
  
  repeat {
    totalTicketsPrice += ticket
    totalCardAndTicketPrice += (currentTicketPrice * perc)
    currentTicketPrice = (currentTicketPrice * perc)
    counter += 1
  } while totalCardAndTicketPrice >= totalTicketsPrice
  
  
  
  
  return counter
}

import XCTest

class CWCinemaTest : XCTestCase {
    
    func testBasicExample() {
            XCTAssertEqual(movie(card: 500, ticket: 15, perc: 0.9), 43, "❌ Failed on basic example 1")
            XCTAssertEqual(movie(card: 100, ticket: 10, perc: 0.95), 24, "❌ Failed on basic example 2")
        }
    
    
    
}

CWCinemaTest.defaultTestSuite.run()



//: [Next](@next)
