//
//  ContentView.swift
//  FruitApp-SwiftUI
//
//  Created by Admin on 03/08/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: Property
    
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    
    //MARK: Body
    
    var body: some View {
        NavigationView {
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }//:Button
                    .sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
                )
        }// : Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


//MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 11")
    }
}
