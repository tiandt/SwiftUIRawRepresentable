//
//  DatePicker+RawRepresentable.swift
//  SwiftUIRawRepresentable
//
//  Created by tdt on 2021/4/20.
//

import SwiftUI

public struct StorageDatePickerStyle: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let automatic = StorageDatePickerStyle(rawValue: "automatic")
    public static let compact = StorageDatePickerStyle(rawValue: "compact")
    public static let graphical = StorageDatePickerStyle(rawValue: "graphical")
    public static let wheel = StorageDatePickerStyle(rawValue: "wheel")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static var allCases: [StorageDatePickerStyle] {
        [.automatic, .compact, .graphical, .wheel]
    }

    public static var `default`: StorageDatePickerStyle = .automatic

}

public struct StorageDatePickerDisplayedComponents: RawRepresentable, Equatable, Hashable, Identifiable, CaseIterable, DefaultPropertyProtocol {

    public var id: String { rawValue } //Identifiable

    public static let date = StorageDatePickerDisplayedComponents(rawValue: "date")
    public static let hourAndMinute = StorageDatePickerDisplayedComponents(rawValue: "hourAndMinute")
    public static let dateHourAndMinute = StorageDatePickerDisplayedComponents(rawValue: "dateHourAndMinute")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static var allCases: [StorageDatePickerDisplayedComponents] {
        [.date, .hourAndMinute, .dateHourAndMinute]
    }

    public static var `default`: StorageDatePickerDisplayedComponents = .dateHourAndMinute

    public var datePickerComponents: DatePickerComponents {
        switch self {
            case .date:
                return [.date]
            case .hourAndMinute:
                return [.hourAndMinute]
            case .dateHourAndMinute:
                return [.hourAndMinute, .date]
            default:
                return [.hourAndMinute, .date]
        }
    }

}
