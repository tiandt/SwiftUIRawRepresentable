//
//  PickerStyle+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/6/21.
//

import Foundation

public struct StoragePickerStyle: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let automatic = StoragePickerStyle(rawValue: "automatic")
    public static let inline = StoragePickerStyle(rawValue: "inline")
    public static let menu = StoragePickerStyle(rawValue: "menu")
    public static let segmented = StoragePickerStyle(rawValue: "segmented")
    public static let wheel = StoragePickerStyle(rawValue: "wheel")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public var description: String {
        switch self {
            case .automatic:
                return "automatic"
            case .inline:
                return "inline"
            case .menu:
                return "menu"
            case .segmented:
                return "segmented"
            case .wheel:
                return "wheel"
            default:
                return "default"
        }
    }

    public static var allCases: [StoragePickerStyle] {
        [.automatic, .inline, .menu, .segmented, .wheel]
    }

    public static var `default`: StoragePickerStyle = .automatic

}
