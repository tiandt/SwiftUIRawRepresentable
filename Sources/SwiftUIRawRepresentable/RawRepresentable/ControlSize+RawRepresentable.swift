//
//  ControlSize+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/6/23.
//

import SwiftUI

extension ControlSize: RawRepresentable, DefaultPropertyProtocol {
    public init?(rawValue: String) {
        switch rawValue {
            case "mini":
                self = .mini
            case "small":
                self = .small
            case "regular":
                self = .regular
            case "large":
                self = .large
            default:
                self = .regular
        }
    }

    public var rawValue: String {
        switch self {
            case .mini:
                return "mini"
            case .small:
                return "small"
            case .regular:
                return "regular"
            case .large:
                return "large"
            @unknown default:
                return "Unknown"
        }
    }

    public static var `default`: ControlSize = .regular

}
