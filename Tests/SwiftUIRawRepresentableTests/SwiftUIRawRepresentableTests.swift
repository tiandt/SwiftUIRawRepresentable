import XCTest
import SwiftUI
@testable import SwiftUIRawRepresentable

final class SwiftUIRawRepresentableTests: XCTestCase {

    func testColorResolved() throws {

        try [EnvironmentValues.light, EnvironmentValues.dark].forEach {
            let white = Color.white.resolve(in: $0)
            let resolvedWhite = try JSONDecoder().decode(Color.Resolved.self, from: try JSONEncoder().encode(white))
            XCTAssertEqual(white.description, resolvedWhite.description)
            XCTAssertEqual(white, resolvedWhite)
        }

        try [EnvironmentValues.light, EnvironmentValues.dark].forEach {
            let secondary = Color.secondary.resolve(in: $0)
            let resolvedSecondary = try JSONDecoder().decode(Color.Resolved.self, from: try JSONEncoder().encode(secondary))
            XCTAssertEqual(secondary.description, resolvedSecondary.description)
            XCTAssertEqual(secondary, resolvedSecondary)
        }

        try [EnvironmentValues.light, EnvironmentValues.dark].forEach {
            let cyan = Color.cyan.resolve(in: $0)
            let resolvedCyan = try JSONDecoder().decode(Color.Resolved.self, from: try JSONEncoder().encode(cyan))
            XCTAssertEqual(cyan.description, resolvedCyan.description)
            XCTAssertEqual(cyan, resolvedCyan)
        }

    }

    func testColorResolvedRawRepresentable() throws {
        [EnvironmentValues.light, EnvironmentValues.dark].forEach {
            let white = Color.white.resolve(in: $0)
            let resolvedWhite = Color.Resolved(rawValue: white.rawValue)!
            XCTAssertEqual(white.description, white.description)
            XCTAssertEqual(white, resolvedWhite)
        }

        [EnvironmentValues.light, EnvironmentValues.dark].forEach {
            let primary = Color.primary.resolve(in: $0)
            let resolvedPrimary = Color.Resolved(rawValue: primary.rawValue)!
            XCTAssertEqual(primary.description, resolvedPrimary.description)
            XCTAssertEqual(primary, resolvedPrimary)
        }

        [EnvironmentValues.light, EnvironmentValues.dark].forEach {
            let secondary = Color.secondary.resolve(in: $0)
            let resolvedSecondary = Color.Resolved(rawValue: secondary.rawValue)!
            XCTAssertEqual(secondary.description, resolvedSecondary.description)
            XCTAssertEqual(secondary, resolvedSecondary)
        }

        [EnvironmentValues.light, EnvironmentValues.dark].forEach {
            let cyan = Color.cyan.resolve(in: $0)
            let resolvedCyan = Color.Resolved(rawValue: cyan.rawValue)!
            XCTAssertEqual(cyan.description, resolvedCyan.description)
            XCTAssertEqual(cyan, resolvedCyan)
        }

    }

    func testColorRawRepresentable() throws {
        let white = Color.white
        let white1 = Color(rawValue: white.rawValue)!
        XCTAssertEqual(white1, white)
        XCTAssertEqual(white1.resolve(in: .light).description, white.resolve(in: .light).description)
        XCTAssertEqual(white1.resolve(in: .dark).description, white.resolve(in: .dark).description)
        XCTAssertEqual(white1.resolve(in: .light), white.resolve(in: .light))
        XCTAssertEqual(white1.resolve(in: .dark), white.resolve(in: .dark))

        let primary = Color.primary
        let primary1 = Color(rawValue: primary.rawValue)!
        XCTAssertEqual(primary1, primary)
        XCTAssertEqual(primary1.resolve(in: .light).description, primary.resolve(in: .light).description)
        XCTAssertEqual(primary1.resolve(in: .dark).description, primary.resolve(in: .dark).description)
        XCTAssertEqual(primary1.resolve(in: .light), primary.resolve(in: .light))
        XCTAssertEqual(primary1.resolve(in: .dark), primary.resolve(in: .dark))

        let secondary = Color.secondary
        let secondary1 = Color(rawValue: secondary.rawValue)!
        XCTAssertEqual(secondary1, secondary)
        XCTAssertEqual(secondary1.resolve(in: .light).description, secondary.resolve(in: .light).description)
        XCTAssertEqual(secondary1.resolve(in: .dark).description, secondary.resolve(in: .dark).description)
        XCTAssertEqual(secondary1.resolve(in: .light), secondary.resolve(in: .light))
        XCTAssertEqual(secondary1.resolve(in: .dark), secondary.resolve(in: .dark))

        let cyan = Color.cyan
        let cyan1 = Color(rawValue: cyan.rawValue)!
        XCTAssertEqual(cyan1, cyan)
        XCTAssertEqual(cyan1.resolve(in: .light).description, cyan.resolve(in: .light).description)
        XCTAssertEqual(cyan1.resolve(in: .dark).description, cyan.resolve(in: .dark).description)
        XCTAssertEqual(cyan1.resolve(in: .light), cyan.resolve(in: .light))
        XCTAssertEqual(cyan1.resolve(in: .dark), cyan.resolve(in: .dark))
    }

}
