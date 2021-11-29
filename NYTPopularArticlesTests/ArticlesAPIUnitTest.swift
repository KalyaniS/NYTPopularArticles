//
//  XCTestCase.swift
//  NYTPopularArticlesTests
//
//  Created by kalyani on 29/11/21.
//

import XCTest

class ArticlesAPIUnitTest: XCTestCase {
    
    func test_ArticlesApiResource_With_ValidRequest_Returns_ArticlesResponse(){
        
        let resource = ArticlesResource()
        
        let expectation = self.expectation(description: "ValidRequest_Returns_ArticlesResponse")
        
        resource.getArticles(duration: Constants.seven) { (error, articlesResponse) in
            
            XCTAssertNotNil(articlesResponse)
            XCTAssertNil(error)
            expectation.fulfill()

        }

        waitForExpectations(timeout: 5, handler: nil)

    }
    
    func test_ArticlesApiResource_With_InvalidRequest_Returns_ArticlesResponse(){
        
        let resource = ArticlesResource()
        
        let expectation = self.expectation(description: "InvalidRequest_Returns_ArticlesResponse")
        
        resource.getArticles(duration: Constants.other) { (error, articlesResponse) in

            XCTAssertNotNil(error)
            XCTAssertNil(articlesResponse)
            expectation.fulfill()
        }
    
        waitForExpectations(timeout: 5, handler: nil)


    }

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
