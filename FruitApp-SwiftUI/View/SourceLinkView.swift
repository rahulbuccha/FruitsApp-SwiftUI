//
//  SourceLinkView.swift
//  FruitApp-SwiftUI
//
//  Created by Admin on 03/08/22.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Contens Source")
            Spacer()
            
            Link("Wikipedia", destination: URL(string: "https://wikipedia.com")! )
            Image(systemName: "arrow.up.right.square")
        }// :GroupBox
        .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
