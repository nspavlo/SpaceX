//
//  RocketsTableViewCellTest.swift
//  EssenceUnitTests
//
//  Created by Jans Pavlovs on 11/01/2022.
//

import XCTest

@testable import Essence

// MARK: Test

class RocketsTableViewCellTest: XCTestCase {
    func testInitialTextValues() throws {
        let sut = RocketsTableViewCell(style: .subtitle, reuseIdentifier: nil)
        XCTAssertNil(sut.textLabel?.text)
        XCTAssertNil(sut.detailTextLabel?.text)
    }

    func testAssignedTextValues() throws {
        let sut = RocketsTableViewCell(style: .subtitle, reuseIdentifier: nil)
        let viewModel = RocketsListItemViewModel(title: "Index", subtitle: "Latvia")
        sut.configure(with: viewModel)
        XCTAssertEqual(sut.textLabel?.text, viewModel.title)
        XCTAssertEqual(sut.detailTextLabel?.text, viewModel.subtitle)
    }
}