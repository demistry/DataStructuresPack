//
//  ParenthesisCheck.swift
//  DataStructuresPack
//
//  Created by David Ilenwabor on 09/06/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import Foundation

class ParethesisCheck{
    static let shared = ParethesisCheck()
    func checkParenthesis(string : String)->Bool{
        var lifo : [Character] = []
        let dict : [Character : Character] = ["(":")", "[" : "]", "{" : "}"]
        for char in [Character](string){
            if char == "(" || char == "{" || char == "["{
                lifo.append(char)
            } else if char == ")" || char == "]" || char == "}"{
                if lifo.isEmpty{
                    return false
                }
                if char != dict[lifo.last!]{
                    return false
                }
                let _ = lifo.popLast()
            }
        }
        return lifo.isEmpty
    }
}
