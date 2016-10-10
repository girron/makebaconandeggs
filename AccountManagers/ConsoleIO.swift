//
//  ConsoleIO.swift
//  AccountManagers
//
//  Created by Henry Swanson on 9/29/16.
//  Copyright © 2016 Jack Burton. All rights reserved.
//

import Foundation

enum OptionType: String {
    case pol = "Pol"
    case pat = "Pat"
    case cathleen = "Cathleen"
    case max = "Max"
    case ty = "Ty"
    case quit = "q"
    case unknown
    
    init(value: String) {
        switch value {
        case "Pol": self = .pol
        case "Pat": self = .pat
        case "Cathleen": self = .cathleen
        case "Max": self = .max
        case "Ty": self = .ty
        case "q": self = .quit
        default: self = .unknown
        }
    }
}

enum OutputType {
    case error
    case standard
}

class ConsoleIO {
    class func printUsage() {
        let executableName = (CommandLine.arguments[0] as NSString).lastPathComponent
        
        print("usage")
        print("\(executableName) -Pol string1 string2")
        print("or")
        print("\(executableName) -Pat string")
        print("or")
        print("\(executableName) -h to show usage information")
        print("Type \(executableName) without an option to enter interactive mode")
    }
    
    func getOption(_ option: String) -> (option: OptionType, value: String) {
        return (OptionType(value: option), option)
    }
    
    func writeMessage(_ message: String, to: OutputType = .standard) {
        switch to {
        case .standard:
            print("\u{001B}[;m \(message)")
        case .error:
            fputs("u{001B}[0;31m \(message)\n", stderr)
        }
    }
    
    func getInput() -> String {
        let keyboard = FileHandle.standardInput
        
        let inputData = keyboard.availableData
        
        let strData = String(data: inputData, encoding: String.Encoding.utf8)!
        
        return strData.trimmingCharacters(in: CharacterSet.newlines)
    }
}
