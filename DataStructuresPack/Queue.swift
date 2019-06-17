//
//  Queue.swift
//  DataStructuresPack
//
//  Created by David Ilenwabor on 17/06/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import Foundation

protocol QueueProtocol{
    associatedtype Element
    
    mutating func enqueue(_ element : Element)
    
    mutating func dequeue()->Element?
    
    var isEmpty : Bool{ get }
    
    var peek : Element?{ get }
}


class Queue<Element> : QueueProtocol{
    var peek: Element?{
        get{
            return storage.first
        }
    }
    
    
    private var storage : [Element] = []
    
    func enqueue(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    func dequeue() -> Element? {
        return isEmpty ? nil : storage.removeFirst()
    }
    
    var isEmpty: Bool{
        get{
           return storage.isEmpty
        }
    }
}

struct QueueStack<T> : QueueProtocol{
    
    private var enqueueStack : [T] = []
    private var dequeueStack : [T] = []
    mutating func enqueue(_ element: T) {
        enqueueStack.append(element)
    }
    
    @discardableResult
    mutating func dequeue() -> T?{
        if dequeueStack.isEmpty{
            dequeueStack = enqueueStack.reversed()
            enqueueStack.removeAll()
        }
        
        return dequeueStack.popLast()
    }
    
    var isEmpty: Bool{
        return enqueueStack.isEmpty && dequeueStack.isEmpty
    }
    
    var peek: Element?{
        return !dequeueStack.isEmpty ? dequeueStack.last : enqueueStack.first
    }
    
    
}
