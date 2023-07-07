//
//  EditMode+RawRepresentable.swift
//  
//
//  Created by tdt on 2022/12/8.
//

import SwiftUI

#if os(iOS) || os(tvOS)
extension EditMode: RawRepresentable, CaseIterable, DefaultPropertyProtocol {
    public init?(rawValue: String) {
        switch rawValue {
            case "active":
                self = .active
            case "transient":
                self = .transient
            case "inactive":
                self = .inactive
            default:
                self = .inactive
        }
    }

    public var rawValue: String {
        switch self {
            case .active:
                return "active"
            case .transient:
                return "transient"
            case .inactive:
                return "inactive"
            @unknown default:
                return "inactive"
        }
    }

    public static var allCases: [EditMode] {
        [.active, .transient, .inactive]
    }

    public static var `default`: EditMode = .inactive

}
#endif
