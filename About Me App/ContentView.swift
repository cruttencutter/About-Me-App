//
//  ContentView.swift
//  About Me App
//
//  Created by Claire Ruttencutter on 4/16/23.
//

import SwiftUI

struct ContentView: View {
    @State private var learnMore = false
    
    var body: some View {
        ZStack {
            Color("yellow").ignoresSafeArea()
                
            VStack(alignment: .center, spacing: 0) {
                Text("🌟claire🌟")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Image("aboutMeFrame")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                
                Button("learn more") {
                    learnMore = true
                }.font(.body)
                 .buttonStyle(.borderedProminent)
                 .tint(.white)
                 .foregroundColor(Color("green"))
            }
            .padding()
            .background(Image("background")
                .resizable(resizingMode: .stretch)
                .cornerRadius(15))
            .padding()
            .alert("Introduction", isPresented: $learnMore, actions:{}, message: {
                Text("Hello! My name is Claire and some of my favorite things include traveling, seeing plays/musicals, art, and hanging out with my cat Goose :) Thanks for checking out my app!")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
