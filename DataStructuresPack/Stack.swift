//
//  Stack.swift
//  DataStructuresPack
//
//  Created by David Ilenwabor on 22/05/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import Foundation



struct Stack<Element>{
    private var storage : [Element] = []
    
    mutating func push(_ newElement : Element){
        storage.append(newElement)
    }
    
}

extension Stack : CustomStringConvertible{ //used for debugging purposes to provide a customized description
    var description: String {
        return storage.map{"\($0)"}.joined(separator: " ")
    }
    
    
}


