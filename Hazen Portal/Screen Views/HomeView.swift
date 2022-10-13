//
//  HomeView2.swift
//  Hazen Portal
//
//  Created by Corey Bright on 10/12/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
            VStack {
                ScrollView {
                    HeaderView()
                    VStack {
                        MenuView() // doesnt show on preview
                    }.frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .bottom)
                        .border(.red)
                        .padding([.top], 30)
                    
                
            }
            
            
            
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color("Background"))
            .border(.red)
            .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

