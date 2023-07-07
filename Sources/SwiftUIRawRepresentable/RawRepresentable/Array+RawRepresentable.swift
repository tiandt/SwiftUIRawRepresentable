//
//  Array+RawRepresentable.swift
//  
//
//  Created by tdt on 2021/6/18.
//  https://stackoverflow.com/a/62563773/4728060
//  @AppStorage就可以保存Codable数组了

import Foundation

extension Array: RawRepresentable where Element: Codable {
    public init?(rawValue: String) {
        guard let data = rawValue.data(using: .utf8),
              let result = try? JSONDecoder().decode([Element].self, from: data)
        else {
            return nil
        }
        self = result
    }

    public var rawValue: String {
        guard let data = try? JSONEncoder().encode(self),
              let result = String(data: data, encoding: .utf8)
        else {
            return "[]"
        }
        return result
    }
}
