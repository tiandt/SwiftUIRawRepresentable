//
//  ShapeStyle+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/6/25.
//

import SwiftUI

public struct StorageShapeStyle: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let none = StorageShapeStyle(rawValue: "none")
    public static let primary = StorageShapeStyle(rawValue: "primary")
    public static let secondary = StorageShapeStyle(rawValue: "secondary")
    public static let tertiary = StorageShapeStyle(rawValue: "tertiary")
    public static let quaternary = StorageShapeStyle(rawValue: "quaternary")
    public static let linearGradient = StorageShapeStyle(rawValue: "linearGradient")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static var allCases: [StorageShapeStyle] {
        [.none, .primary, .secondary, .tertiary, .quaternary, .linearGradient]
    }

    public static var `default`: StorageShapeStyle = .none

}
