//
//  ScaleTo+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/6/30.
//

import SwiftUI

public struct StorageScaleTo: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let none = StorageScaleTo(rawValue: "none")
    public static let fit = StorageScaleTo(rawValue: "fit")
    public static let fill = StorageScaleTo(rawValue: "fill")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static var allCases: [StorageScaleTo] {
        [.none, .fit, .fill]
    }

    public static var `default`: StorageScaleTo = .none

}
