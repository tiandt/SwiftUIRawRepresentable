//
//  NavigationSplitViewStyle+reRawRepresentable.swift
//  
//
//  Created by tdt on 2022/12/2.
//

import SwiftUI

public struct StorageNavigationSplitViewStyle: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let automatic = StorageNavigationSplitViewStyle(rawValue: "automatic")
    public static let prominentDetail = StorageNavigationSplitViewStyle(rawValue: "prominentDetail")
    public static let balanced = StorageNavigationSplitViewStyle(rawValue: "balanced")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static var allCases: [StorageNavigationSplitViewStyle] {
        [.automatic, .prominentDetail, .balanced]
    }

    public static var `default`: StorageNavigationSplitViewStyle = .automatic

}
