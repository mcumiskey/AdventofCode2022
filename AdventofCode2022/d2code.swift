//
//  main.swift
//  AdventofCode2022
//
//  Created by Miles Cumiskey on 12/3/22.
//

import Foundation

let rock = 1
let paper = 2
let scissors = 3

let loss = 0
let draw = 3
let win = 6

let d2input = d2data.split(separator: "\n", omittingEmptySubsequences: false)

var roundScore = 0
var playerScoreP1 = 0

func d2p1 () {
    for i in 0...d2input.count-1 {
        let round = d2input[i].split(separator: " ")
        
        //player gets points for win / loss / draw
        let result = playRockPaperScissors(opponent: String(round[0]), player: String(round[1]))
        if(result == "win") {
            playerScoreP1 = playerScoreP1 + win
        }
        if(result == "draw") {
            playerScoreP1 = playerScoreP1 + draw
            print("draw")
        }
        if(result == "loss") {
            playerScoreP1 = playerScoreP1 + loss
        }
        
        //player  gets the point value for their rock paper scissor choice
        if(round[1] == "X") {
            playerScoreP1 = playerScoreP1 + rock
        }
        if(round[1] == "Y") {
            playerScoreP1 = playerScoreP1 + paper
        }
        if(round[1] == "Z") {
            playerScoreP1 = playerScoreP1 + scissors
        }
    }
}

var playerScoreP2 = 0
func d2p2 () {
    
    for i in 0...d2input.count-1 {
        let round = d2input[i].split(separator: " ")
        
        //get points for win/draw/loss
        if(round[1] == "X") {
            playerScoreP2 = playerScoreP2 + loss
        }
        if(round[1] == "Y") {
            playerScoreP2 = playerScoreP2 + draw
        }
        if(round[1] == "Z") {
            playerScoreP2 = playerScoreP2 + win
        }
        
        //player  gets the point value for their rock paper scissor choice
        let choice = determinePlayerChoice(opponent: String(round[0]), playerOutcome: String(round[1]))
        
        if(choice == "A") {
            playerScoreP2 = playerScoreP2 + rock
        }
        if(choice == "B") {
            playerScoreP2 = playerScoreP2 + paper
        }
        if(choice == "C") {
            playerScoreP2 = playerScoreP2 + scissors
        }
        if(choice == "oops"){
            print("something is wrong")
        }
        
    }
}


func determinePlayerChoice(opponent: String, playerOutcome: String) -> String {
    if(playerOutcome == "Y"){
        return opponent
    }
    if(playerOutcome == "Z") {
        //opponent chose rock
        if(opponent == "A"){
            return "B"
        }
        if(opponent == "B"){
            return "C"
        }
        if(opponent == "C"){
            return "A"
        }
    }
    if(playerOutcome == "X") {
        if(opponent == "A"){
            return "C"
        }
        if(opponent == "B"){
            return "A"
        }
        if(opponent == "C"){
            return "B"
        }
    }
    return "oops"
}

func playRockPaperScissors(opponent: String, player: String) -> String {
    if(
        //rock v Rock
        (opponent == "A" && player == "X") ||
        //paper v paper
        (opponent == "B" && player == "Y") ||
        //scissors v scissors
        (opponent == "C" && player == "Z")
    ){
        return "draw"
    }
    if(
        //rock beats scissors
        (opponent == "A" && player == "Z") ||
        //paper beats rock
        (opponent == "B" && player == "X") ||
        //scissors beats paper
        (opponent == "C" && player == "Y")
    ){
        return "loss"
    } else {
        return "win"
    }
}
