//
//  HomeScreen.swift
//  Hazen Portal
//
//  Created by Corey Bright on 9/29/22.
//


import Foundation

import SwiftUI




struct HomeView: View {
    
    @State private var showingHomeScreen = true

    var body: some View {
        
    Color("Background")
            .edgesIgnoringSafeArea(.all)
            .overlay(
         
                VStack{
               
                    HeaderView()
       
                    Spacer()
                    
                    
                  
                    VStack {
                        
                        MenuView()
                    
                    }
                    
                  
                
               
                })
                
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


