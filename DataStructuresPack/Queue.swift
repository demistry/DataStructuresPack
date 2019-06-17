//
//  Queue.swift
//  DataStructuresPack
//
//  Created by David Ilenwabor on 17/06/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import Foundation

protocol Queue{
    associatedtype Element
    
    mutating func enqueue(_ element : Element)
    
    mutating func dequeue()->Element?
    
    var isEmpty : Bool{ get }
    
    var peek : Element?{ get }
}


class QueueStack<Element> : Queue{
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
