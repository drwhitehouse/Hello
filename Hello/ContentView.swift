//
//  ContentView.swift
//  Hello
//
//  Created by Dan Whitehouse on 31/07/2023.
//

import SwiftUI

struct ContentView:View{
    var body:some View{
     ImageView()
    }
}
struct ImageOverlay: View {
    var body: some View {
        VStack {
            Text("Hello World!")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}

struct ImageView: View {
    var body: some View {
        VStack {
            Image("porky 1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay(ImageOverlay(), alignment: .center)
            Spacer()
        }
    }
}
