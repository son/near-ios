//
//  Log.swift
//  near-ios
//
//  Created by Takeru Sato on 2020/03/18.
//  Copyright © 2020 son. All rights reserved.
//

import Foundation

func log(_ object: Any?...) {
    #if DEBUG
    print("\(object.map { $0.debugDescription }.joined())")
    #endif
}
