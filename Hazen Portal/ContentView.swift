//
//  ContentView.swift
//  Hazen Portal
//
//  Created by Elijah Tay on 9/20/22.
//

import SwiftUI

struct ContentView: View {
    
    // test to make sure font has been successfully added
    /*
    init() {
        for fontFamily in UIFont.familyNames {
            
            for font in UIFont.fontNames(forFamilyName: fontFamily) {
                print("--\(font)")
            }
        }
    }
     */
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("This is Test")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
