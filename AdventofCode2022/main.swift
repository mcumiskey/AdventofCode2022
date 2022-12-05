//
//  main.swift
//  AdventofCode2022
//
//  Created by Miles Cumiskey on 12/3/22.

import Foundation

//  solution helper by Ezekiel Elin
extension ClosedRange {
    func fullyContains(other range: ClosedRange) -> Bool {
        return self.contains(range.lowerBound) && self.contains(range.upperBound)
    }
}

let input = d4data.split(separator: "\n")

var contained = 0

var overlaps = 0

for i in 0...input.count-1 {
    let thisline = input[i].split(separator: ",")
    
    let leftSide = thisline[0].split(separator: "-").map{ Int($0) ?? -1 }
    let rightSide = thisline[1].split(separator: "-").map{ Int($0) ?? -1 }
    
    let leftRange = leftSide[0]...leftSide[1]
    let rightRange = rightSide[0]...rightSide[1]
    
    print(thisline)

    
    //return r1.fullyContains(other: r2) || r2.fullyContains(other: r1)
    if (leftRange.fullyContains(other: rightRange)) || (rightRange.fullyContains(other: leftRange)) {
        contained+=1
        print(true)
    }
    
    if(checkForOverlap(leftsideMin: leftSide[0], leftsideMax: leftSide[1], rightsideMin: rightSide[0], rightsideMax: rightSide[1])){
        overlaps+=1
    }
    
}

print(contained)
print(overlaps)


func makeStringRange(lowerBound: Int, upperBound: Int) -> String {
    var string = ""

    for i in lowerBound...upperBound {
        string.append(i.description)
    }
    return string
}


func checkForOverlap(leftsideMin: Int, leftsideMax: Int, rightsideMin: Int, rightsideMax: Int) -> Bool {
    //(a1 <= b2) && (b1 <= a2)
    if((leftsideMin <= rightsideMax) && (rightsideMin <= leftsideMax)) {
        return true
    } else {
        return false
    }
}
