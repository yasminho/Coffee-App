//
//  ConfigurationOption.swift
//  Coffee App
//
//  Created by Yasmin Ho on 2023/06/12.
//

import Foundation

struct ConfigurationOption: Identifiable, Codable, Hashable {
    let id: UUID
    let name: String
    let calories: Int
    
    static let none=ConfigurationOption(id: UUID(), name: "None", calories: 0)
    
}

