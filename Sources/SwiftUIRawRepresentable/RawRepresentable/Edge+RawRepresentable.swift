//
//  Edge+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/6/22.
//

import SwiftUI

public struct StorageHorizontalEdge: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let leading = StorageHorizontalEdge(rawValue: "leading")
    public static let trailing = StorageHorizontalEdge(rawValue: "trailing")
    public static let both = StorageHorizontalEdge(rawValue: "both")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static var allCases: [StorageHorizontalEdge] {
        [.leading, .trailing, .both]
    }

    public var edges: [HorizontalEdge] {
        switch self {
            case .both:
                return [.leading, .trailing]
            case .leading:
                return [.leading]
            case .trailing:
                return [.trailing]
            default:
                return StorageHorizontalEdge.default.edges
        }
    }

    public static var `default`: StorageHorizontalEdge = .leading

}
