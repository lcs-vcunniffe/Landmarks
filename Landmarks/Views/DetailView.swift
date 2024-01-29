//
//  ContentView.swift
//  Landmarks
//
//  Created by Veda Niav Cunniffe on 2024-01-27.
//

import SwiftUI

struct DetailView: View {
    
    //MARK: Stored properties
    let item: Landmark
    
    //MARK: Computed properties
    var body: some View {
        ScrollView {
            Image(item.image)
                .resizable()
                .scaledToFit()
            
            HStack {
                Image(systemName: item.isRecommended == true ? "hand.thumbsup.fill" : "hand.thumbsdown")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                    .padding(5)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Text(item.description)
            .padding(.horizontal)
        }
        .navigationTitle(item.name)
    }
}

#Preview {
    DetailView(item: rom)
}

#Preview {
    DetailView(item: sudburyNickel)
}
