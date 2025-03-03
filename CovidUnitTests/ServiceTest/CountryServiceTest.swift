//
//  CountryServiceTest.swift
//  CovidTests
//
//  Created by Arseni Khatsuk on 17.12.2024.
//

import XCTest
@testable import Covid

final class CountryServiceTest: XCTestCase {
    private var sut: ICountryService!
    
    override func setUp() async throws {
        try await super.setUp()
        sut = CountryServiceMock()
    }
    
    override func tearDown() async throws {
        sut = nil
        try await super.tearDown()
    }
    
    func test_GetCountry() async {
        sut.getCountry(countryName: "Foo") { result in
            switch result {
            case .success(let countryResponse):
                XCTAssertNotNil(countryResponse)
            case .failure(let error):
                XCTAssertThrowsError(error)
            }
        }
    }
}
