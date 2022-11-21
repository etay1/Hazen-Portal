//
//  HomeView2.swift
//  Hazen Portal
//
//  Created by Corey Bright on 10/12/22.
//

import SwiftUI

struct HomeView: View {
    @State private var fullName = "Corey Bright"
    
    var body: some View {
        
        VStack {
        
            VStack {
                Image("header-logo")
                
                Text("MyHazen")
                    .font(.loginPrompt)
                    .foregroundColor(Color.accentColor)
            }.frame(maxWidth: .infinity,maxHeight:70, alignment: .top)
                //.border(.red)
                
            VStack {
                NavigationLink(destination: SettingsView()){
                    Image(systemName: "person.crop.circle")
                        .frame(width: 125, height: 125)
                        .font(.system(size: 110))
                        .foregroundColor(Color("Background"))
                        .background(Color.accentColor)
                        .clipShape(Circle())
                    
                    
                }.buttonStyle(PlainButtonStyle())
                
                Text(fullName)
                    .foregroundColor(Color.accentColor)
                    .font(.loginPrompt)
                    .padding(.bottom,10)
        
            }//.frame(maxWidth: .infinity,maxHeight: .infinity)
                .padding(.top, 20)
                //.border(.red)
            
           
        
            MenuView(menuShowing: .constant(false), size:80)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .padding(.bottom,60)
                //.border(.red)
                
     
            
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

