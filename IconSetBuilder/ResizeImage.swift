//
//  ResizeImage.swift
//  IconSetBuilder
//
//  Created by Michael Salmon on 2019-10-09.
//  Copyright © 2019 mesme. All rights reserved.
//

import Foundation
import ImageIO

func resizeImage(_ data: Data, _ pixelSize: CGFloat) -> CGImage? {
    let options: [CFString: Any] = [
        kCGImageSourceCreateThumbnailFromImageAlways: true,
        kCGImageSourceCreateThumbnailWithTransform: true,
        kCGImageSourceShouldCacheImmediately: true,
        kCGImageSourceThumbnailMaxPixelSize: pixelSize
    ]
    guard
        let isrc = CGImageSourceCreateWithData(data as CFData, nil),
        let image = CGImageSourceCreateThumbnailAtIndex(isrc, 0, options as CFDictionary)
    else {
        return nil
    }

    return image
}
