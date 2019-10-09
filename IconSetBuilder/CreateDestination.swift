//
//  CreateDestination.swift
//  IconSetBuilder
//
//  Created by Michael Salmon on 2019-10-09.
//  Copyright © 2019 mesme. All rights reserved.
//

import Foundation

func createDestination(_ url: URL) -> Bool {
    let fm = FileManager.default
    if fm.fileExists(atPath: url.path) { return true }

    do {
        try fm.createDirectory(at: url, withIntermediateDirectories: true, attributes: nil)
    } catch {
        print(error)
        return false
    }

    return true
}
