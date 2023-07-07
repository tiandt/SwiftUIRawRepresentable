//
//  Materia+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/6/21.
//

import SwiftUI

// Materia不支持RawRepresentable和equaltable，自己实现
public struct StorageMaterial: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let none = StorageMaterial(rawValue: "none")
    public static let regularMaterial = StorageMaterial(rawValue: "regularMaterial")
    public static let thickMaterial = StorageMaterial(rawValue: "thickMaterial")
    public static let thinMaterial = StorageMaterial(rawValue: "thinMaterial")
    public static let ultraThinMaterial = StorageMaterial(rawValue: "ultraThinMaterial")
    public static let ultraThickMaterial = StorageMaterial(rawValue: "ultraThickMaterial")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public var description: String {
        switch self {
            case .none:
                return "none"
            case .regularMaterial:
                return "regularMaterial"
            case .thickMaterial:
                return "thickMaterial"
            case .thinMaterial:
                return "thinMaterial"
            case .ultraThinMaterial:
                return "ultraThinMaterial"
            case .ultraThickMaterial:
                return "ultraThickMaterial"
            default:
                return "regularMaterial"
        }
    }

    public var material: Material? {
        switch self {
            case .none:
                return nil
            case .regularMaterial:
                return .regularMaterial
            case .thickMaterial:
                return .thickMaterial
            case .thinMaterial:
                return .thinMaterial
            case .ultraThinMaterial:
                return .ultraThinMaterial
            case .ultraThickMaterial:
                return .ultraThickMaterial
            default:
                return nil
        }
    }

    public static var allCases: [StorageMaterial] {
        [.none, .regularMaterial, .thickMaterial, thinMaterial, .ultraThinMaterial, .ultraThickMaterial]
    }

    public static var `default`: StorageMaterial = .none

}
