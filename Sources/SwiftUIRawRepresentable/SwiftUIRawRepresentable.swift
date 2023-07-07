//
//  SwiftUIRawRepresentable.swift
//
//
//  Created by tdt on 2023/7/7.
//

import Foundation

#if canImport(UIKit)
import UIKit
internal typealias PlatformColor = UIColor
#elseif canImport(AppKit)
import AppKit
internal typealias PlatformColor = NSColor
#endif
