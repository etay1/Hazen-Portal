//
//  InsuranceView.swift
//  Hazen Portal
//
//  Created by Corey Bright on 10/10/22.
//

import SwiftUI

struct InsuranceView: View {
    
    var body: some View {
        HeaderView()
        Text("Hello World!")
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
