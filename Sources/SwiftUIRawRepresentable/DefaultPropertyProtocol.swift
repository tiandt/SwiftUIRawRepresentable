//
//  DefaultPropertyProtocol.swift
//  
//
//  Created by tdt on 2023/7/7.
//

import Foundation
import SwiftUI

public protocol DefaultPropertyProtocol {
    static var `default`: Self { get }
}

extension Bool: DefaultPropertyProtocol {
    public static var `default`: Bool = false
}

extension Double: DefaultPropertyProtocol {
    public static var `default`: Double = 0
}

extension Int: DefaultPropertyProtocol {
    public static var `default`: Int = 0
}

extension CGFloat: DefaultPropertyProtocol {
    public static var `default`: CGFloat = 0
}

extension Color: DefaultPropertyProtocol {
    public static var `default`: Color = .primary
}
