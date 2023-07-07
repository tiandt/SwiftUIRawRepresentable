//
//  Prominence+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/6/22.
//

import SwiftUI

extension Prominence: RawRepresentable, CaseIterable, DefaultPropertyProtocol {
    public init?(rawValue: String) {
        switch rawValue {
            case "standard":
                self = .standard
            case "increased":
                self = .increased
            default:
                self = .standard
        }
    }

    public var rawValue: String {
        switch self {
            case .standard:
                return "standard"
            case .increased:
                return "increased"
            @unknown default:
                return "Unknown"
        }
    }

    public static var allCases: [Prominence] {
        [.standard, .increased]
    }

    public static var `default`: Prominence = .standard
}
