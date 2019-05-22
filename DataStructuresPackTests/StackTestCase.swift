//
//  StackTestCase.swift
//  DataStructuresPackTests
//
//  Created by David Ilenwabor on 22/05/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import XCTest
@testable import DataStructuresPack

class StackTestCase: XCTestCase {
    var stack =  Stack<Int>()
    
    
    override func setUp() {
        stack.push(1)
        stack.push(2)
        stack.push(3)
        stack.push(4)
    }
    
    func test_StackDescription(){
        XCTAssertEqual(stack.description, "1 2 3 4")
    }
    
    func test_Pop(){
        XCTAssertEqual(stack.pop(), 4)
    }
    
    
//    func test_PopMethod(){
//        stack.pop()
//
//    }

}
