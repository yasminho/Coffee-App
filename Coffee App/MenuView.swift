//
//  MenuView.swift
//  Coffee App
//
//  Created by Yasmin Ho on 2023/05/31.
//

import SwiftUI

struct MenuView: View {
    @EnvironmentObject var menu: Menu
    
    let columns=[GridItem(.adaptive(minimum: 150))]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns, pinnedViews: .sectionHeaders)
                {ForEach(menu.sections) {section in
                    Section{
                        ForEach(section.drinks) {drink in
                            
                            NavigationLink(destination: CustomizedView(drink:drink)) {
                                VStack {
                                    Text(drink.name)
                                        .font(.system(.body, design: .serif))
                                    
                                    
                                    Image(drink.image)
                                        .resizable()
                                        .scaledToFit()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(15)
                                }
                                .padding(.bottom)
                            }
                            
                            .buttonStyle(.plain)
                        }
                            
                    } header: {
                        Text(section.name)
                            .font(.system(.title, design: .serif))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding([.top, .bottom, .trailing], 5)
                            .background(.background)
                    }
                    }
                }
                .padding(.horizontal)
            }
            
            .navigationTitle("Add a Drink")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
            .environmentObject(Menu()) //injects the environment object into the preview
        
    }
}
