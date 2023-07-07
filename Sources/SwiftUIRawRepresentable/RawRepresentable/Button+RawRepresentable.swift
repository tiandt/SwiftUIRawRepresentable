//
//  Button+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/4/20.
//

import Foundation
import SwiftUI

public struct StorageButtonStyle: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable
    public static let plain = StorageButtonStyle(rawValue: "plain")
    public static let automatic = StorageButtonStyle(rawValue: "automatic")
    public static let borderless = StorageButtonStyle(rawValue: "borderless")
    public static let bordered = StorageButtonStyle(rawValue: "bordered")
    public static let borderedProminent = StorageButtonStyle(rawValue: "borderedProminent")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static var `default`: StorageButtonStyle = .automatic

    public static var allCases: [StorageButtonStyle] {
        [.plain, .automatic, .borderless, .bordered, .borderedProminent]
    }

}

public struct StorageButtonRole: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable
    public static let none = StorageButtonRole(rawValue: "none")
    public static let destructive = StorageButtonRole(rawValue: "destructive")
    public static let cancel = StorageButtonRole(rawValue: "cancel")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static var allCases: [StorageButtonRole] {
        [.none, .destructive, .cancel]
    }

    public static var `default`: StorageButtonRole = .none

    public var buttonRole: ButtonRole? {
        switch self {
            case .none:
                return nil
            case .destructive:
                return .destructive
            case .cancel:
                return .cancel
            default:
                return nil
        }
    }

}
