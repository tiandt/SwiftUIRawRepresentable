//
//  ContentMode+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/6/30.
//

import SwiftUI
extension ContentMode: RawRepresentable, DefaultPropertyProtocol {
    public init?(rawValue: String) {
        switch rawValue {
            case "fit":
                self = .fit
            case "fill":
                self = .fill
            default:
                self = .fit
        }
    }

    public var rawValue: String {
        switch self {
            case .fit:
                return "fit"
            case .fill:
                return "fill"
        }
    }

    public static var `default`: ContentMode = .fit
}
