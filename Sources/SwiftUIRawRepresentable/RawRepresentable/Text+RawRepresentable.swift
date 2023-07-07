//
//  Text+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/4/8.
//  让Text的属性可以直接保存到AppStorage中

import SwiftUI

extension Text.TruncationMode: RawRepresentable, CaseIterable, DefaultPropertyProtocol {
    public init?(rawValue: String) {
        switch rawValue {
            case "head":
                self = .head
            case "tail":
                self = .tail
            case "middle":
                self = .middle
            default:
                self = .tail
        }
    }

    public var rawValue: String {
        switch self {
            case .head:
                return "head"
            case .tail:
                return "tail"
            case .middle:
                return "middle"
            @unknown default:
                return "Unknown"
        }
    }

    public static var allCases: [Text.TruncationMode] {
        [.head, .tail, .middle]
    }

    public static var `default`: Text.TruncationMode = .tail
}

// 为了方便和nil之间的切换，需要新建一个类。
public struct StorageTextCase: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let none = StorageTextCase(rawValue: "none")
    public static let uppercase = StorageTextCase(rawValue: "uppercase")
    public static let lowercase = StorageTextCase(rawValue: "lowercase")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    /// A collection of all values of this type.
    public static var allCases: [StorageTextCase] {
        [.none, .uppercase, .lowercase]
    }

    public func `case`() -> Text.Case? {
        switch self {
            case .none:
                return nil
            case .uppercase:
                return .uppercase
            case .lowercase:
                return .lowercase
            default:
                return nil
        }
    }

    public static var `default`: StorageTextCase = .none

}

extension TextAlignment: RawRepresentable, DefaultPropertyProtocol {
    public init?(rawValue: String) {
        switch rawValue {
            case "leading":
                self = .leading
            case "center":
                self = .center
            case "trailing":
                self = .trailing
            default:
                self = .leading
        }
    }

    public var rawValue: String {
        switch self {
            case .leading:
                return "leading"
            case .center:
                return "center"
            case .trailing:
                return "trailing"
        }
    }

    public static var `default`: TextAlignment = .leading

}

public struct StoreTextLineStylePattern: RawRepresentable, Equatable, Hashable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let solid = StoreTextLineStylePattern(rawValue: "solid")
    public static let dot = StoreTextLineStylePattern(rawValue: "dot")
    public static let dash = StoreTextLineStylePattern(rawValue: "dash")
    public static let dashDot = StoreTextLineStylePattern(rawValue: "dashDot")
    public static let dashDotDot = StoreTextLineStylePattern(rawValue: "dashDotDot")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static var allCases: [StoreTextLineStylePattern] {
        [.solid, .dot, .dash, .dashDot, .dashDotDot]
    }

    public static var `default`: StoreTextLineStylePattern = .solid

    public var pattern: Text.LineStyle.Pattern {
        switch self {
            case .solid:
                return .solid
            case .dot:
                return .dot
            case .dash:
                return .dash
            case .dashDot:
                return .dashDot
            case .dashDotDot:
                return .dashDotDot
            default:
                return StoreTextLineStylePattern.default.pattern
        }
    }

}
