//
//  Menu.swift
//  Coffee App
//
//  Created by Yasmin Ho on 2023/05/31.
//

import Foundation

class Menu: ObservableObject, Codable {
    let sections: [MenuSection]
    
    init() {
        do {
            let url=Bundle.main.url(forResource: "menu", withExtension: "json")!
            let data=try! Data(contentsOf: url)
            let MenuData=try JSONDecoder().decode(Menu.self, from:data)
            
            sections=MenuData.sections
            
        } catch {
            fatalError("JSON is missing")
        }
        
    
    }
    
}
