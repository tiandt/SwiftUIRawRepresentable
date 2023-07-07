//
//  ToolbarItemPlacement+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/6/22.
//

import SwiftUI

// ToolbarItemPlacement不支持Equaltable
public struct StorageToolbarItemPlacement: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let none = StorageToolbarItemPlacement(rawValue: "none")
    public static let automatic = StorageToolbarItemPlacement(rawValue: "automatic")
    public static let primaryAction = StorageToolbarItemPlacement(rawValue: "primaryAction")
    public static let confirmationAction = StorageToolbarItemPlacement(rawValue: "confirmationAction")
    public static let cancellationAction = StorageToolbarItemPlacement(rawValue: "cancellationAction")
    public static let destructiveAction = StorageToolbarItemPlacement(rawValue: "destructiveAction")
#if !os(watchOS)
    public static let principal = StorageToolbarItemPlacement(rawValue: "principal")
    public static let status = StorageToolbarItemPlacement(rawValue: "status")
    public static let navigation = StorageToolbarItemPlacement(rawValue: "navigation")
    public static let keyboard = StorageToolbarItemPlacement(rawValue: "keyboard")
#endif
#if !os(macOS)
    public static let navigationBarLeading = StorageToolbarItemPlacement(rawValue: "navigationBarLeading")
    public static let navigationBarTrailing = StorageToolbarItemPlacement(rawValue: "navigationBarTrailing")
    public static let bottomBar = StorageToolbarItemPlacement(rawValue: "bottomBar")
#endif

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public var placement: ToolbarItemPlacement? {
        switch self {
        case .none:
            return nil
        case .automatic:
            return .automatic
        case .primaryAction:
            return .primaryAction

        case .confirmationAction:
            return .confirmationAction
        case .cancellationAction:
            return .cancellationAction
        case .destructiveAction:
            return .destructiveAction
#if !os(watchOS)
        case .principal:
            return .principal
        case .navigation:
            return .navigation

#endif
#if !os(watchOS) && !os(tvOS)
        case .keyboard:
            return .keyboard
        case .status:
            return .status
#endif
#if !os(macOS) && !os(tvOS)
        case .bottomBar:
            return .bottomBar
#endif
#if !os(macOS) && !os(watchOS)
        case .navigationBarLeading:
            return .navigationBarLeading
        case .navigationBarTrailing:
            return .navigationBarTrailing
#endif
        default:
            return nil
        }
    }

    public static var allCases: [StorageToolbarItemPlacement] {
#if os(macOS)
        [.none, .automatic, .principal, .navigation, .primaryAction, .status, .confirmationAction, .cancellationAction, .destructiveAction, .keyboard]
#elseif os(watchOS)
        [.none, .primaryAction, .confirmationAction, .cancellationAction, .destructiveAction , .navigationBarLeading, .navigationBarTrailing, .bottomBar]
#elseif os(tvOS)
        [.none, .automatic, .principal, .navigation, .primaryAction, .status, .confirmationAction, .cancellationAction, .destructiveAction, .keyboard, .navigationBarLeading, .navigationBarTrailing, .bottomBar]
#else
        [.none, .automatic, .principal, .navigation, .primaryAction, .status, .confirmationAction, .cancellationAction, .destructiveAction, .keyboard, .navigationBarLeading, .navigationBarTrailing, .bottomBar]
#endif
    }

    public static var `default`: StorageToolbarItemPlacement = .none

}
