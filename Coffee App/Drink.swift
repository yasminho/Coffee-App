//
//  Drink.swift
//  Coffee App
//
//  Created by Yasmin Ho on 2023/05/31.
//

import Foundation

struct Drink: Identifiable, Codable {
    let id: UUID
    let name: String
    let caffeine: [Int]
    let coffeeBase: Bool
    let servedwithMilk: Bool
    let baseCalories: Int
    
    var image: String{
        name.lowercased().replacingOccurrences(of: " ", with: "-")
    }
    
    static let example=Drink(id: UUID(), name: "Example Drink", caffeine: [100,200,300], coffeeBase: true, servedwithMilk: true, baseCalories: 120)
    
}
