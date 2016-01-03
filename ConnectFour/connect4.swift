#!/usr/bin/swift
//
//  connect4.swift
//  ConnectFour
//
//  Created by Kevin Shiiba on 1/2/16.
//  Copyright © 2016 Kevin Shiiba. All rights reserved.
// 
//
// command line: ./connect4.swift

import Foundation

typealias Board = Array<Array<Cell>>

enum CellContents: String {
    case X
    case O
    case Empty
    
    var description: String {
        switch self {
        case X:
            return "X"
        case O:
            return "O"
        case Empty:
            return " "
        }
    }
}

struct Cell {
    var value: CellContents
}

let maxColumns = 6
let maxRows = 6

// declare players (boolean?), after set boolean to !boolean; (e.g. if "true" = "O", if "false" = "X")

func printBoard(board: Board) {
    for row in 0...maxRows-1 {
        print("|", terminator:"")
        for column in 0...maxColumns-1 {
            print(board[row][column].value.description, terminator:"|")
        }
        print("")
    }
}


let args = Process.arguments

func main(args: [String]) {
    var board = Board()
    var input = ""
    
    // Initialize board
    for _ in 0...maxColumns-1 {
        board.append(Array(count: maxRows, repeatedValue: Cell(value: .Empty)))
    }
    printBoard(board)
    
    // game loop
    repeat {
        // Player "X", which column do you play?; take into account human entry preferences
        input = readLine(stripNewline: true)!
        // take input (columnIndex), and iterate (bottom up) through that column, checking for empty; if empty, change to current player enum value
        printBoard(board)

    } while (input != "END") // solver in while loop;
    
    // declare winner
    // human error handling: what if they say "Z" in column number?
}

main(args)

