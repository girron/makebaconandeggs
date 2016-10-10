//
//  AccountManager.swift
//  AccountManagers
//
//  Created by Henry Swanson on 9/29/16.
//  Copyright © 2016 Jack Burton. All rights reserved.
//

import Foundation

class AccountManager {
    
    let consoleIO = ConsoleIO()
    
    func staticMode() {
        let argCount = CommandLine.argc
        
        let argument = CommandLine.arguments[1]
        
        let (option, value) = consoleIO.getOption(argument.substring(from: argument.characters.index(argument.startIndex, offsetBy: 1)))
        
        switch option {
        case .pol:
            consoleIO.writeMessage("I understand")
        case .pat:
            consoleIO.writeMessage("There he is")
        case .cathleen:
            consoleIO.writeMessage("How much Java in your JavaScript experience?")
        case .max:
            consoleIO.writeMessage("I love sisig and pastries!")
        case .ty:
            consoleIO.writeMessage("Okie doke")
        case .unknown, .quit:
            consoleIO.writeMessage("Luckily this is not an account manager at PT Systems as you do not really want to talk to them.", to: .error)
            ConsoleIO.printUsage()
        }
        
        ConsoleIO.printUsage()
    }
    
    func interactiveMode() {
        consoleIO.writeMessage("Welcome to the PT Systems Job Portal. This program checks if an input string is an account manager or not")
        
        var shouldQuit = false
        while !shouldQuit {
            consoleIO.writeMessage("Type 'Pol', 'Pat', 'Max', 'Cathleen' or 'Ty' to see what their catchphrase is.")
            let (option, value) = consoleIO.getOption(consoleIO.getInput())
            switch option {
            case .pol:
                consoleIO.writeMessage("I understand")
            case .pat:
                consoleIO.writeMessage("There he is")
            case .cathleen:
                consoleIO.writeMessage("How much Java in your JavaScript experience?")
            case .max:
                consoleIO.writeMessage("I love sisig and pastries!")
            case .ty:
                consoleIO.writeMessage("Okie doke")
            case .unknown, .quit:
                consoleIO.writeMessage("Luckily this is not an account manager at PT Systems as you do not really want to talk to them.", to: .error)
                ConsoleIO.printUsage()
            }
            
        }
    }
}

