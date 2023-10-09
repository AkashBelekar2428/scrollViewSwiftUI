//
//  ContentView.swift
//  ScrollView
//
//  Created by Akash Belekar on 05/10/23.
//

import SwiftUI

struct customText:View{
    var text: String
    var body: some View{
        Text(text)
    }
        init(_ text:String){
            print("Creating new custom Text")
            self.text = text
        
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical){
            LazyVStack(spacing: 10){
                ForEach(0..<100){
                    customText("Items \($0)")
                        .font(.title)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
