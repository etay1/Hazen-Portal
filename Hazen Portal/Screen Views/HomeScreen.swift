//
//  HomeScreen.swift
//  Hazen Portal
//
//  Created by Corey Bright on 9/29/22.
//


import Foundation

import SwiftUI



func ButtonCreation (icon: String, iconName: String, y_offset : CGFloat) -> AnyView {
    
    return AnyView(VStack(alignment: .center){

        Button("") {
        }
        
        Image(systemName: icon)
            .font(.largeTitle)
            .foregroundColor(.yellow)
            .frame(width:81.71, height:76.82)
            .background(Color.accentColor)
            .cornerRadius(10)
            .offset( y: y_offset)
        Text(iconName)
            .font(.iconText)
            .offset( y: y_offset)
            .foregroundColor(.accentColor)

    })
    

}


struct HomeScreen: View {
    
    @State private var showingHomeScreen = true

    var body: some View {
        
    Color("Background")
            .edgesIgnoringSafeArea(.all)
            .overlay(
         
                VStack{
               
                    HeaderView()
       
                    Spacer()
                    
                    
                  
                    VStack {
                
                        HStack (spacing: 75) {
                            // FIRST ROW
                            ButtonCreation(icon: "calendar", iconName: "Appoitments",  y_offset: -115)
                            ButtonCreation(icon: "ic-covid", iconName: "COVID-19",  y_offset: -115)
                        }
                        HStack (spacing: 75) {
                            // SECOND ROW
                            ButtonCreation(icon: "syringe", iconName: "Vaccinations",  y_offset: -115)
                            
                            ButtonCreation(icon: "umbrella", iconName: "Insurance",  y_offset: -115)
                        }
                        
                        // THIRD ROW
                       
                        HStack (spacing: 75) {
                            ButtonCreation(icon: "list.clipboard", iconName: "Forms",  y_offset: -115)
                            ButtonCreation(icon: "envelope", iconName: "Messages",  y_offset: -115)
                        }
                        
                        // FOURTH ROW
                        HStack (spacing: 75) {
                            ButtonCreation(icon: "bell", iconName: "Education", y_offset: -115)
                            ButtonCreation(icon: "arrow.up.square", iconName: "Upload", y_offset: -115)
                        }
                 
                        
            
                        /*
                        Color.accentColor
                            .frame(width: 81.71, height:76.82)
                            .cornerRadius(7)
                            .overlay(
                                Image("ic-covid")
                            )
                        
                        Color.accentColor
                            .frame(width: 81.71, height:76.82)
                            .cornerRadius(7)
                            .overlay(
                                Image("ic-insurance")
                            )
                     
                            //.background(.black)

                        */
                       /* Text("Hello default")
                        Text("Hello Middle")
                            .offset(y:-500)
                        */
                    
                    }
                    
                  
                
               
                })
                
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}


