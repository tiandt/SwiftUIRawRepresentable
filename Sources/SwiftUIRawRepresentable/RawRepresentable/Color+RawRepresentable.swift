//
//  Color+RawRepresentable.swift
//
//
//  Created by tdt on 2023/7/7.
//

import Foundation
import SwiftUI

extension Color.Resolved: RawRepresentable {

    public init?(rawValue: String) {
        guard let data = Data(base64Encoded: rawValue) else { return nil }
        do {
            let resolved = try JSONDecoder().decode(Color.Resolved.self, from: data)
            self = resolved
        } catch {
            print(error)
            return nil
        }
    }

    public var rawValue: String {
        do {
            let data = try JSONEncoder().encode(self)
            return data.base64EncodedString()
        } catch {
            print(error)
            return ""
        }
    }

}

extension Color: RawRepresentable {

    public init?(rawValue: String) {
        guard let data = Data(base64Encoded: rawValue) else { return nil }
        do {
            guard let color = try NSKeyedUnarchiver.unarchivedObject(ofClass: PlatformColor.self, from: data) else { return nil }
            self = Color(color)
        } catch {
            print(error)
            return nil
        }
    }

    public var rawValue: String {

        do {
            let light = self.resolve(in: .light)
            let dark = self.resolve(in: .dark)
#if canImport(UIKit)
            let color = PlatformColor {
                $0.userInterfaceStyle == .dark ? PlatformColor(resolved: dark) : PlatformColor(resolved: light)
            }
#else
            let color = PlatformColor(name: nil) { apperance in
                apperance.bestMatch(from: [NSAppearance.Name.darkAqua, NSAppearance.Name.aqua]) == NSAppearance.Name.darkAqua ? PlatformColor(resolved: dark) : PlatformColor(resolved: light)
            }
#endif
            let data = try NSKeyedArchiver.archivedData(withRootObject: color, requiringSecureCoding: false) as Data
            return data.base64EncodedString()
        } catch {
            print(error)
            return ""
        }
    }

}

internal extension EnvironmentValues {
    static let light: EnvironmentValues = {
        var env = EnvironmentValues()
        env.colorScheme = .light
        return env
    }()

    static let dark: EnvironmentValues = {
        var env = EnvironmentValues()
        env.colorScheme = .dark
        return env
    }()
}

private extension PlatformColor {
    convenience init(resolved: Color.Resolved) {
        self.init(red: CGFloat(resolved.red), green: CGFloat(resolved.green), blue: CGFloat(resolved.blue), alpha: CGFloat(resolved.opacity))
    }
}
