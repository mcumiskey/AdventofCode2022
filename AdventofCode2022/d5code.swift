//
//  d5code.swift
//  AdventofCode2022
//
//  Created by Miles Cumiskey on 12/6/22.
//

import Foundation

let d5input = d5sample.split(separator: "\n", omittingEmptySubsequences: false)

var stacksHelper = getStacks()

var stacks = [String]()

let rowsOfStacks = 3;

func createStacks () {
    for i in 0...d5input.count-1 {
        let d5help = d5input[i].split(separator: " ", omittingEmptySubsequences: false)
        for j in 0...rowsOfStacks {
            
        }
    }
}

func getStacks() -> [String] {
    var tempStacks = [String]()
    for i in 0...d5input.count-1 {
        if(d5input[i] == ""){
            let temp = d5input[i+1].split(separator: " ").map{String($0)}
            
            for t in 0...temp.count-1 {
                tempStacks.append(temp[t])
            }
        }
    }
    return tempStacks
}
