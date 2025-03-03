//
//  UILaunchTest.swift
//  CovidUITests
//
//  Created by Arseni Khatsuk on 17.12.2024.
//

import XCTest

class UILaunchTests: XCTestCase {
    func test_LaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
