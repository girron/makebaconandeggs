//
//  StringExtension.swift
//  AccountManagers
//
//  Created by Henry Swanson on 9/30/16.
//  Copyright © 2016 Jack Burton. All rights reserved.
//

import Foundation

func isSaying(_ s: String) -> String {
    switch s {
    case "Pol":
        print("Anyway. I understand")
    case "Pat":
        print("There he is!")
    case "Cathleen":
        print("How much Java experience do you have with JavaScript?")
    case "Max":
        print("I love Sisig and pastries!")
    case "Ty":
        print("Okie doke")
    default:
        print("This is not an account manager at PT Systems")
        
    }
    return s
}
