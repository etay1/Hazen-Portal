//
//  AppoitmentsView.swift
//  Hazen Portal
//
//  Created by Corey Bright on 10/8/22.
//

import SwiftUI

struct AppointmentsView: View {
    var body: some View {

        Color("Background")
            .edgesIgnoringSafeArea(.all)
            .overlay(
        
        VStack {
            HeaderView()
           // Spacer()
            

     
            Text("Create an appointment")
                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                .font(.myHazen)
                .foregroundColor(Color("AccentColor"))
                .offset(y:-65)
    


 
        })


    }
    
}

struct AppoitmentsView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentsView()
    }
}
