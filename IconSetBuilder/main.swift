//
//  main.swift
//  IconSetBuilder
//
//  Created by Michael Salmon on 2019-10-08.
//  Copyright © 2019 mesme. All rights reserved.
//

import Foundation

if !(3...4).contains(CommandLine.arguments.count) {
    let cmd = URL(fileURLWithPath: CommandLine.arguments.first ?? "IconSetBuilder").lastPathComponent
    print("""
Usage:
    \(cmd) <device> <source> [output directory]

        Resize the source image and write as PNG files to the output directory.
""")
    exit(0)
}

let device = (CommandLine.arguments[1]).lowercased()
let url = URL(fileURLWithPath: CommandLine.arguments[2])
let baseName = url.deletingPathExtension().lastPathComponent
let source = SourceData(url)
let destDir =
    URL(fileURLWithPath: CommandLine.arguments.count != 4 ? "." : CommandLine.arguments[3])
        .appendingPathComponent("iconSet", isDirectory: true)

// Create destination
if !createDestination(destDir) { exit(1) }

if let data = source?.data {
    _ = iconSizes[device]?.map { processData(data, $0, baseName, destDir) }
} else {
    exit(2)
}
