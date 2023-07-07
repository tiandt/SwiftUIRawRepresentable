//
//  NavigationSplitViewVisibility+RawRepresentable.swift
//  
//
//  Created by tdt on 2022/11/25.
//

import SwiftUI

public struct StorageNavigationSplitViewVisibility: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let detailOnly = StorageNavigationSplitViewVisibility(rawValue: "detailOnly")
    public static let doubleColumn = StorageNavigationSplitViewVisibility(rawValue: "doubleColumn")
    public static let all = StorageNavigationSplitViewVisibility(rawValue: "all")
    public static let automatic = StorageNavigationSplitViewVisibility(rawValue: "automatic")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static var allCases: [StorageNavigationSplitViewVisibility] {
        [.detailOnly, .doubleColumn, .all, .automatic]
    }

    public static var `default`: StorageNavigationSplitViewVisibility = .automatic

    public var columnVisibility: NavigationSplitViewVisibility {
        switch self {
            case .detailOnly:
                return .detailOnly
            case .doubleColumn:
                return .doubleColumn
            case .all:
                return .all
            case .automatic:
                return .automatic
            default:
                return StorageNavigationSplitViewVisibility.default.columnVisibility
        }
    }
}

// 可以直接在项目中使用的
// StorageNavigationSplitViewVisibility专门用于NavigationSplitViewVisibility无法满足CodingManual需要
extension NavigationSplitViewVisibility: RawRepresentable, CaseIterable, Hashable, Identifiable, DefaultPropertyProtocol {

    public var id: String { rawValue }

    public init?(rawValue: String) {
        switch rawValue {
            case "detailOnly":
                self = .detailOnly
            case "doubleColumn":
                self = .doubleColumn
            case "all":
                self = .all
            case "automatic":
                self = .automatic
            default:
                self = .automatic
        }
    }

    public var rawValue: String {
        switch self {
            case .detailOnly:
                return "detailOnly"
            case .doubleColumn:
                return "doubleColumn"
            case .all:
                return "all"
            case .automatic:
                return "automatic"
            default:
                return "Unknown"
        }
    }

    public static var allCases: [NavigationSplitViewVisibility] {
        [.detailOnly, .doubleColumn, .all, .automatic]
    }

    public var columnVisibility: NavigationSplitViewVisibility {
        switch self {
            case .detailOnly:
                return .detailOnly
            case .doubleColumn:
                return .doubleColumn
            case .all:
                return .all
            case .automatic:
                return .automatic
            default:
                return NavigationSplitViewVisibility.default.columnVisibility
        }
    }

    public static let `default`: NavigationSplitViewVisibility = .automatic

    public var storage: StorageNavigationSplitViewVisibility {
        switch self {
            case .detailOnly:
                return .detailOnly
            case .doubleColumn:
                return .doubleColumn
            case .all:
                return .all
            case .automatic:
                return .automatic
            default:
                return StorageNavigationSplitViewVisibility.default
        }
    }
}
