//
//  MenuSection.swift
//  Coffee App
//
//  Created by Yasmin Ho on 2023/05/31.
//

import Foundation

struct MenuSection: Identifiable, Codable{
    let id: UUID
    let name: String
    let drinks: [Drink]
}
