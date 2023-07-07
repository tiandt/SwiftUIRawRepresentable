//
//  ListStyle+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/6/22.
//

import SwiftUI

public struct StorageToggleStyle: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let automatic = StorageToggleStyle(rawValue: "automatic")
    public static let `switch` = StorageToggleStyle(rawValue: "switch")
    public static let button = StorageToggleStyle(rawValue: "button")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static var allCases: [StorageToggleStyle] {
        [.automatic, .switch, .button]
    }

    public static var `default`: StorageToggleStyle = .automatic

}
