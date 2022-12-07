//
//  d6code.swift
//  AdventofCode2022
//
//  Created by Miles Cumiskey on 12/7/22.
//

import Foundation

let d6input = d6data.split(separator: "\n")


func d6p1 () {
    for i in 0...d6input.count-1 {
        let line = d6input[i]
        print(line)
        for j in 0...line.count-4 {
            let start = line.index(line.startIndex, offsetBy: j)
            let end = line.index(line.startIndex, offsetBy: j+3)
            let range = start...end
            
            if(AreCharactersUnique(input: String(line[range]))) {
                print(String(line[range]))
                print(j+4)
                break
            }
        }
    }
}

func d6p2 () {
    for i in 0...d6input.count-1 {
        let line = d6input[i]
        print(line)
        for j in 0...line.count-14 {
            let start = line.index(line.startIndex, offsetBy: j)
            let end = line.index(line.startIndex, offsetBy: j+13)
            let range = start...end
            
            if(AreCharactersUnique(input: String(line[range]))) {
                print(String(line[range]))
                print(j+14)
                break
            }
        }
    }
}

func AreCharactersUnique(input: String) ->Bool {
    for i in 1...input.count-1 {
        let char = input[input.index(input.startIndex, offsetBy: i)]
        var testString = input
        testString.remove(at: input.index(input.startIndex, offsetBy: i))
        if testString.contains(char) {
            return false
        }
    }
    return true
}
