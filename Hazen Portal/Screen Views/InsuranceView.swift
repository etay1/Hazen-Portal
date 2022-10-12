//
//  InsuranceView.swift
//  Hazen Portal
//
//  Created by Corey Bright on 10/10/22.
//

import SwiftUI

struct InsuranceView: View {
    @State private var isMenuDisplayed = false
   

    
    var body: some View {
       
        
                
            if isMenuDisplayed {
                
                    
                    HStack (spacing: 75){
                        MenuView()
                            
                           // .offset(y: 200)
                        
                    }
                    
                
            }
            if (isMenuDisplayed == false) {
                VStack {
                    Button(action:{
                        isMenuDisplayed = true
                        
                    }) {
                        Image(systemName: "sun.min.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color("Background"))
                            .frame(width:81.71, height:76.82)
                            .background(Color("AccentColor"))
                            .cornerRadius(10)
                        
                    }
                    
                    
                }
            }
            if (isMenuDisplayed == true) {
                VStack {
                    Button(action:{
                        isMenuDisplayed = false
                        
                    }) {
                        Image(systemName: "sun.min.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color("Background"))
                            .frame(width:81.71, height:76.82)
                            .background(Color("AccentColor"))
                            .cornerRadius(10)
                        
                    }
                    
                    
                }
        }
        
    }
}

struct InsuranceView_Previews: PreviewProvider {
    static var previews: some View {
        InsuranceView()
    }
}

/*
 HStack (spacing: 75) {
     // FIRST ROW
     ButtonCreation(icon: "calendar", iconName: "Appoitments",  y_offset: -115, destination: AppointmentsView() )
         
     ButtonCreation(icon: "ic-covid", iconName: "COVID-19",  y_offset: -115, destination:  AppointmentsView())
 }
 HStack (spacing: 75) {
     // SECOND ROW
     ButtonCreation(icon: "syringe", iconName: "Vaccinations",  y_offset: -115, destination: AppointmentsView())
     
     ButtonCreation(icon: "umbrella", iconName: "Insurance",  y_offset: -115, destination: AppointmentsView())
 }
 
 // THIRD ROW

 HStack (spacing: 75) {
     ButtonCreation(icon: "list.clipboard", iconName: "Forms",  y_offset: -115, destination: AppointmentsView())
     ButtonCreation(icon: "envelope", iconName: "Messages",  y_offset: -115, destination: AppointmentsView())
 }
 
 // FOURTH ROW
 HStack (spacing: 75) {
     ButtonCreation(icon: "bell", iconName: "Education", y_offset: -115, destination: AppointmentsView())
     ButtonCreation(icon: "arrow.up.square", iconName: "Upload", y_offset: -115, destination: AppointmentsView())
 }
}
 
 */
