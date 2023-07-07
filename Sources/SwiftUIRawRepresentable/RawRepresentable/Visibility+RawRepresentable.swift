//
//  Visibility+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/6/18.
//

import SwiftUI

extension Visibility: RawRepresentable, DefaultPropertyProtocol {
    public init?(rawValue: String) {
        switch rawValue {
            case "visible":
                self = .visible
            case "hidden":
                self = .hidden
            case "automatic":
                self = .automatic
            default:
                self = .automatic
        }
    }

    public var rawValue: String {
        switch self {
            case .visible:
                return "visible"
            case .hidden:
                return "hidden"
            case .automatic:
                return "automatic"
        }
    }

    public static var `default`: Visibility = .automatic

}
