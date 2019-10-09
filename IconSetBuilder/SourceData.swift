//
//  SourceImage.swift
//  IconSetBuilder
//
//  Created by Michael Salmon on 2019-10-08.
//  Copyright © 2019 mesme. All rights reserved.
//

import Foundation
import ImageIO

struct SourceData {
    let data: Data
    let url: URL

    init?(_ url: URL) {
        self.url = url
        do {
            self.data = try Data(contentsOf: url)
        } catch {
            print(error)
            return nil
        }
    }
}
