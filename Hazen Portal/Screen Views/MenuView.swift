//
//  MenuView.swift
//  Hazen Portal
//
//  Created by Corey Bright on 10/5/22.
//

import SwiftUI




func ButtonCreation (icon: String, iconName: String, y_offset : CGFloat, destination: some View) -> AnyView {
    
    @State  var showingMenuView = true
    
    return AnyView(NavigationStack {
     
    //    VStack {
            
                Button(action:{
                }) {
                    
                    NavigationLink(destination: destination, label: {
                    
                        Image(systemName: icon)
                            .font(.largeTitle)
                            .foregroundColor(.yellow)
                            .frame(width:81.71, height:76.82)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                        
                    })
                    }

            .offset(y: y_offset)
            Text(iconName)
                .font(.iconText)
                .offset( y: y_offset)
                .foregroundColor(.accentColor)
          //  }
 
    })
}

struct MenuView: View {
    @State private var opacity = 0.5
    
    var body: some View {
        
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
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
