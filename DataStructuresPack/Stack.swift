//
//  Stack.swift
//  DataStructuresPack
//
//  Created by David Ilenwabor on 22/05/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import Foundation



struct Stack<Element : Equatable> : Equatable{
//    static func == (lhs: Stack<Element>, rhs: Stack<Element>) -> Bool {
//        return lhs == rhs
//    }
    
    private var storage : [Element] = []
    var isEmpty : Bool{
        return peek() == nil
    }
    
    init() {
        
    }
    
    init(_ elements : [Element]) {
        storage = elements
    }
    
    mutating func push(_ newElement : Element){
        storage.append(newElement)
    }
    
    @discardableResult //to remove warnings when result of method isnt used
    mutating func pop()->Element?{
        return storage.popLast()
    }
    
    func peek()-> Element?{
        return storage.last
    }
}

extension Stack : CustomStringConvertible{ //used for debugging purposes to provide a customized description
    var description: String {
        return storage.map{"\($0)"}.reversed().joined(separator: " ")
    }
}

extension Stack : ExpressibleByArrayLiteral{
    init(arrayLiteral elements: Element...) {
        storage = elements
    }
}


