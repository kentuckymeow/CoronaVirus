//
//  SummaryServiceTest.swift
//  CovidTests
//
//  Created by Arseni Khatsuk on 17.12.2024.
//

import XCTest
@testable import Covid

final class SummaryServiceTest: XCTestCase {
    private var sut: ISummaryService!
    override func setUp() async throws {
        try await super.setUp()
        sut = SummaryServiceMock()
    }
    override func tearDown() async throws {
        sut = nil
        try await super.tearDown()
    }
    func test_GetSummary() async {
        sut.getSummary { result in
            switch result {
            case .success(let summaryResponse):
                XCTAssertNotNil(summaryResponse)
            case .failure(let error):
                XCTAssertThrowsError(error)
            }
        }
    }
}
