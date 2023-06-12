//
//  ContentView.swift
//  Coffee App
//
//  Created by Yasmin Ho on 2023/05/31.
//

import SwiftUI

struct ContentView: View {
    @StateObject var menu=Menu()
    
    var body: some View {
        MenuView()
            .environmentObject(menu)
        }
       
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
