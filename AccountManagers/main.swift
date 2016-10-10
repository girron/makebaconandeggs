//
//  main.swift
//  AccountManagers
//
//  Created by Henry Swanson on 9/29/16.
//  Copyright © 2016 Jack Burton. All rights reserved.
//

import Foundation

let accountManager = AccountManager()
if CommandLine.argc >= 1 {
    accountManager.interactiveMode()
} else {
    accountManager.staticMode()
}
