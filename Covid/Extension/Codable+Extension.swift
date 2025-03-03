//
//  Codable+Extension.swift
//  Covid
//
//  Created by Arseni Khatsuk on 17.12.2024.
//

import Foundation

extension Encodable {
    func encoded() throws -> Data {
        return try JSONEncoder().encode(self)
    }
}

extension Data {
    func decoded<T: Decodable>() throws -> T {
        return try JSONDecoder().decode(T.self, from: self)
    }
}
