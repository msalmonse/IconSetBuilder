//
//  ProcessData.swift
//  IconSetBuilder
//
//  Created by Michael Salmon on 2019-10-08.
//  Copyright © 2019 mesme. All rights reserved.
//

import Foundation

func processData(_ data: Data, _ size: Multipliers, _ name: String, _ url: URL) {
    switch size {
    case let .at1(width): processOne(data, 1, width, name, url)
    case let .at2(width): processOne(data, 2, width, name, url)
    case let .at3(width): processOne(data, 3, width, name, url)
    case let .at12(width):
        processOne(data, 1, width, name, url)
        processOne(data, 2, width, name, url)
    case let .at23(width):
        processOne(data, 2, width, name, url)
        processOne(data, 3, width, name, url)
    case let .at123(width):
        processOne(data, 1, width, name, url)
        processOne(data, 2, width, name, url)
        processOne(data, 3, width, name, url)
    }
}

func processOne(_ data: Data, _ at: Int, _ width: Double, _ name: String, _ url: URL) {
    let fileName = name + String(format: "_%dpt@%dx.png", Int(trunc(width)), at)
    if let image = resizeImage(data, CGFloat(width * Double(at))) {
        writeAsPNG(image, url.appendingPathComponent(fileName))
    }
}
