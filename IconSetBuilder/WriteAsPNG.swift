//
//  WriteAsPNG.swift
//  IconSetBuilder
//
//  Created by Michael Salmon on 2019-10-09.
//  Copyright © 2019 mesme. All rights reserved.
//

import Foundation
import ImageIO

@discardableResult
func writeAsPNG(_ image: CGImage, _ url: URL) -> Bool {
    guard let destination =
        CGImageDestinationCreateWithURL(url as CFURL, kUTTypePNG, 1, nil) else { return false }
    CGImageDestinationAddImage(destination, image, nil)

    return CGImageDestinationFinalize(destination)
}
