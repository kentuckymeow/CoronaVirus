//
//  PageViewTest.swift
//  CovidUITests
//
//  Created by Arseni Khatsuk on 17.12.2024.

import XCTest
import SnapshotTesting
@testable import Covid

final class PageViewTest: XCTestCase {
    var sut: UIViewController!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        let container = DependenciesMock().moduleContainer
        sut = container.getPageView()
//        isRecording = true
    }
    
    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func test_DefaultState() {
        assertSnapshot(matching: sut.view, as: .image)
    }
    
    func test_DarkMode() {
        sut.overrideUserInterfaceStyle = .dark
        assertSnapshot(matching: sut.view, as: .image)
    }
}
