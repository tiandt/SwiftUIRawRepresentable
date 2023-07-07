//
//  StorageColorScheme.swift
//  
//
//  Created by tdt on 2022/12/2.
//

import Foundation
import SwiftUI

public struct StorageColorScheme: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable
    public static let auto = StorageColorScheme(rawValue: "auto")
    public static let dark = StorageColorScheme(rawValue: "dark")
    public static let light = StorageColorScheme(rawValue: "light")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static var allCases: [StorageColorScheme] {
        [.auto, .dark, .light]
    }

    public static var `default`: StorageColorScheme = .auto

    public var colorScheme: ColorScheme? {
        switch self {
            case .auto:
                return nil
            case .dark:
                return .dark
            case .light:
                return .light
            default:
                return nil
        }
    }

}
