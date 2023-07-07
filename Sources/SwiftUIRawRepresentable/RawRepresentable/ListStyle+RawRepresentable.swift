//
//  ListStyle+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/6/22.
//

import SwiftUI

public struct StorageListStyle: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {
    
    public var id: String { rawValue } //Identifiable
    
    public static let automatic = StorageListStyle(rawValue: "automatic")
    public static let sidebar = StorageListStyle(rawValue: "sidebar")
#if !os(macOS)
    public static let insetGrouped = StorageListStyle(rawValue: "insetGrouped")
    public static let grouped = StorageListStyle(rawValue: "grouped")
#endif
    public static let inset = StorageListStyle(rawValue: "inset")
    public static let plain = StorageListStyle(rawValue: "plain")
    
    public let rawValue: String
    
    public init(rawValue: String) {
        self.rawValue = rawValue
    }
    
    public static var allCases: [StorageListStyle] {
#if os(macOS)
        [.automatic, .sidebar, .inset, .plain]
#else
        [.automatic, .sidebar, .insetGrouped, .grouped, .inset, .plain]
#endif
    }
    
    public static var `default`: StorageListStyle = .automatic
    
    public var listStyle: any ListStyle {
        switch self {
        case .automatic:
            return .automatic
        case .sidebar:
            return .sidebar
#if !os(macOS)
        case .insetGrouped:
            return .insetGrouped
        case .grouped:
            return .grouped
#endif
        case .inset:
            return .inset
        case .plain:
            return .plain
        default:
            return StorageListStyle.default.listStyle
        }
    }
}
