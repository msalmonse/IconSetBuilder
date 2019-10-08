//
//  IconSetBuilderTests.swift
//  IconSetBuilderTests
//
//  Created by Michael Salmon on 2019-10-08.
//  Copyright © 2019 mesme. All rights reserved.
//

import XCTest

class IconSetBuilderTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSourceImage() {
        let source = SourceData("/Users/mesa/Downloads/mac-pro-select-hero-201711.jpeg")
        XCTAssertNotNil(source)
        print(source?.data.count ?? -1)
    }

}
