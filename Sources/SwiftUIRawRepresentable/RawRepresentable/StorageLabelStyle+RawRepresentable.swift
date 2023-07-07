//
//  StorageLabelStyle.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/7/8.
//

import SwiftUI

public struct StorageLabelStyle: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let automatic = StorageLabelStyle(rawValue: "automatic")
    public static let titleOnly = StorageLabelStyle(rawValue: "titleOnly")
    public static let iconOnly = StorageLabelStyle(rawValue: "iconOnly")
    public static let titleAndIcon = StorageLabelStyle(rawValue: "titleAndIcon")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static var allCases: [StorageLabelStyle] {
        [.automatic, .titleOnly, .iconOnly, .titleAndIcon]
    }

    public static var `default`: StorageLabelStyle = .automatic
}
