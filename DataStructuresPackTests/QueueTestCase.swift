//
//  QueueTestCase.swift
//  DataStructuresPackTests
//
//  Created by David Ilenwabor on 17/06/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import XCTest
@testable import DataStructuresPack

class QueueTestCase: XCTestCase {

    var queue = Queue<String>()
    var queueStack = QueueStack<String>()
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        queue.enqueue("Puppet")
        queue.enqueue("Slyer")
        queue.enqueue("Last one")
        
        
        queueStack.enqueue("Puppet")
        queueStack.enqueue("Slyer")
        queueStack.enqueue("Last one")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_EnqueueArray(){
        XCTAssertEqual(queue.peek!, "Puppet")
    }
    
    func test_DequeueArray(){
        queue.dequeue()
        XCTAssertEqual(queue.peek!, "Slyer")
    }
    
    func test_enqueueStack(){
        XCTAssertEqual(queueStack.peek!, "Puppet")
    }

    func test_dequeueStack(){
        queueStack.dequeue()
        XCTAssertEqual(queueStack.peek!, "Slyer")
    }
}
