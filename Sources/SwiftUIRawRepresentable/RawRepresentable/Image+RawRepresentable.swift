//
//  Image+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/4/8.
//

import SwiftUI

/*

 /// A value that indicates SwiftUI doesn't interpolate image data.
 case none

 /// A value that indicates a low level of interpolation quality, which may
 /// speed up image rendering.
 case low

 /// A value that indicates a medium level of interpolation quality,
 /// between the low- and high-quality values.
 case medium

 /// A value that indicates a high level of interpolation quality, which
 /// may slow down image rendering.
 case high

 */
extension Image.Interpolation: RawRepresentable, CaseIterable, DefaultPropertyProtocol {
    public init?(rawValue: String) {
        switch rawValue {
            case "none":
                self = .none
            case "low":
                self = .low
            case "medium":
                self = .medium
            case "high":
                self = .high
            default:
                self = .none
        }
    }

    public var rawValue: String {
        switch self {
            case .none:
                return "none"
            case .low:
                return "low"
            case .medium:
                return "medium"
            case .high:
                return "high"
            @unknown default:
                return "Unknown"
        }
    }

    public static var allCases: [Image.Interpolation] {
        [.none, .low, .medium, .high]
    }

    public static var `default`: Image.Interpolation = .none

}

extension Image.ResizingMode: RawRepresentable, CaseIterable, DefaultPropertyProtocol {
    public init?(rawValue: String) {
        switch rawValue {
            case "tile":
                self = .tile
            case "stretch":
                self = .stretch
            default:
                self = .stretch
        }
    }

    public var rawValue: String {
        switch self {
            case .tile:
                return "tile"
            case .stretch:
                return "stretch"
            @unknown default:
                return "Unknown"
        }
    }

    public static var allCases: [Image.ResizingMode] {
        [.tile, .stretch]
    }

    public static var `default`: Image.ResizingMode = .stretch

}

// 为了方便和nil之间的切换，需要新建一个类。
public struct StorageImageTemplateRenderingMode: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let none = StorageImageTemplateRenderingMode(rawValue: "none")
    public static let template = StorageImageTemplateRenderingMode(rawValue: "template")
    public static let original = StorageImageTemplateRenderingMode(rawValue: "original")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public var description: String {
        switch self {
            case .none:
                return "none"
            case .template:
                return "template"
            case .original:
                return "original"
            default:
                return "none"
        }
    }

    public static var allCases: [StorageImageTemplateRenderingMode] {
        [.none, .template, .original]
    }

    public static var `default`: StorageImageTemplateRenderingMode = .none

    public var renderingMode: Image.TemplateRenderingMode? {
        switch self {
            case .none:
                return nil
            case .template:
                return .template
            case .original:
                return .original
            default:
                return nil
        }
    }

}

// 为了方便和nil之间的切换，需要新建一个类。
public struct StorageImageScaleMode: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let none = StorageImageScaleMode(rawValue: "none")
    public static let small = StorageImageScaleMode(rawValue: "small")
    public static let medium = StorageImageScaleMode(rawValue: "medium")
    public static let large = StorageImageScaleMode(rawValue: "large")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static var allCases: [StorageImageScaleMode] {
        [.none, .small, .medium, .large]
    }

    public static var `default`: StorageImageScaleMode = .none

    public var scale: Image.Scale? {
        switch self {
            case .none:
                return nil
            case .small:
                return .small
            case .medium:
                return .medium
            case .large:
                return .large
            default:
                return nil
        }
    }

}
