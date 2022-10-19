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
        
            VStack {
                Image("header-logo")
                
                Text("MyHazen")
                    .font(.loginPrompt)
                    .foregroundColor(Color.accentColor)

            }.frame(maxWidth: .infinity,maxHeight: 40, alignment: .top)
              //  .border(.red)
        
            MenuView(menuShowing: .constant(false), size:80)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
               // .border(.red)
                
            
                
            
            
            
            
            
            
            
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color("Background"))
           // .border(.red)
            .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

