//
//  IconSizes.swift
//  IconSetBuilder
//
//  Created by Michael Salmon on 2019-10-08.
//  Copyright © 2019 mesme. All rights reserved.
//

import Foundation

enum Multipliers {
    case at1(Double), at2(Double), at3(Double)
    case at123(Double), at23(Double), at12(Double)
}

let iconSizes: [String: [Multipliers]] = [
    "iphone": [ .at23(20), .at23(29), .at23(40), .at23(60) ],
    "ipad": [ .at2(20), .at2(29), .at2(40), .at2(76), .at2(83.5) ],
    "mac": [ .at12(16), .at12(32), .at12(128), .at12(256), .at12(512) ],
    "watch": [
        .at2(24), .at2(27.5), .at23(29), .at2(40), .at2(44),
        .at2(50), .at2(86), .at2(96), .at2(108)
    ]
]
