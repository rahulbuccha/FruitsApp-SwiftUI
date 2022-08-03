//
//  OnboardingView.swift
//  FruitApp-SwiftUI
//
//  Created by Admin on 03/08/22.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: PROPERTY
    var fruits: [Fruit] = fruitsData
        
    
    // MARK: BODY
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
                
                //FruitCarView()
               
                
            } //: LOOP
        } // :TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}


//MARK: PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
            .previewDevice("iPhone 11")
    }
}
