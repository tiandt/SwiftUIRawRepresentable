//
//  Font+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/4/8.
//

import SwiftUI

extension Font.TextStyle: RawRepresentable, DefaultPropertyProtocol {
    public init?(rawValue: String) {
        switch rawValue {
            case "largeTitle":
                self = .largeTitle
            case "title":
                self = .title
            case "title2":
                self = .title2
            case "title3":
                self = .title3
            case "headline":
                self = .headline
            case "subheadline":
                self = .subheadline
            case "body":
                self = .body
            case "callout":
                self = .callout
            case "footnote":
                self = .footnote
            case "caption":
                self = .caption
            case "caption2":
                self = .caption2
            default:
                self = .body
        }
    }

    public var rawValue: String {
        switch self {
            case .largeTitle:
                return "largeTitle"
            case .title:
                return "title"
            case .title2:
                return "title2"
            case .title3:
                return "title3"
            case .headline:
                return "headline"
            case .subheadline:
                return "subheadline"
            case .body:
                return "body"
            case .callout:
                return "callout"
            case .footnote:
                return "footnote"
            case .caption:
                return "caption"
            case .caption2:
                return "caption2"
            @unknown default:
                return "Unknown"
        }
    }

    public static var `default`: Font.TextStyle = .body

}

extension Font.Weight: RawRepresentable, DefaultPropertyProtocol {
    public init?(rawValue: String) {
        switch rawValue {
            case "ultraLight":
                self = .ultraLight
            case "thin":
                self = .thin
            case "light":
                self = .light
            case "regular":
                self = .regular
            case "medium":
                self = .medium
            case "semibold":
                self = .semibold
            case "bold":
                self = .bold
            case "heavy":
                self = .heavy
            case "black":
                self = .black
            default:
                self = .regular
        }
    }

    public var rawValue: String {
        switch self {
            case .ultraLight:
                return "ultraLight"
            case .thin:
                return "thin"
            case .light:
                return "light"
            case .regular:
                return "regular"
            case .medium:
                return "medium"
            case .semibold:
                return "semibold"
            case .bold:
                return "bold"
            case .heavy:
                return "heavy"
            case .black:
                return "black"
            default:
                return "Unknown"
        }
    }

    public static var `default`: Font.Weight = .regular

}

public struct StorageFontCaps: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let none = StorageFontCaps(rawValue: "none")
    public static let smallCaps = StorageFontCaps(rawValue: "smallCaps")
    public static let lowercaseSmallCaps = StorageFontCaps(rawValue: "lowercaseSmallCaps")
    public static let uppercaseSmallCaps = StorageFontCaps(rawValue: "uppercaseSmallCaps")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public var description: String {
        switch self {
            case .none:
                return "none"
            case .smallCaps:
                return "smallCaps"
            case .lowercaseSmallCaps:
                return "lowercaseSmallCaps"
            case .uppercaseSmallCaps:
                return "uppercaseSmallCaps"
            default:
                return "none"
        }
    }

    /// A collection of all values of this type.
    public static var allCases: [StorageFontCaps] {
        [.none, .smallCaps, .lowercaseSmallCaps, .uppercaseSmallCaps]
    }

    public static var `default`: StorageFontCaps = .none

}

extension Font.Leading: RawRepresentable, CaseIterable, DefaultPropertyProtocol {

    public init?(rawValue: String) {
        switch rawValue {
            case "standard":
                self = .standard
            case "tight":
                self = .tight
            case "loose":
                self = .loose
            default:
                self = .standard
        }
    }

    public var rawValue: String {
        switch self {
            case .standard:
                return "standard"
            case .tight:
                return "tight"
            case .loose:
                return "loose"
            @unknown default:
                return "Unknown"
        }
    }

    public static var allCases: [Font.Leading] {
        [.tight, .standard, .loose]
    }

    public static var `default`: Font.Leading = .standard

}

extension Font.Design: RawRepresentable, CaseIterable, DefaultPropertyProtocol {
    public init?(rawValue: String) {
        switch rawValue {
            case "default":
                self = .default
            case "serif":
                self = .serif
            case "rounded":
                self = .rounded
            case "monospaced":
                self = .monospaced
            default:
                self = .default
        }
    }

    public var rawValue: String {
        switch self {
            case .default:
                return "default"
            case .serif:
                return "serif"
            case .rounded:
                return "rounded"
            case .monospaced:
                return "monospaced"
            @unknown default:
                return "Unknown"
        }
    }

    public static var allCases: [Font.Design] {
        [.default, .serif, .rounded, .monospaced]
    }
}
