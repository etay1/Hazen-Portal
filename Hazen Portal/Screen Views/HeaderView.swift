//
//  Header.swift
//  Hazen Portal
//
//  Created by Corey Bright on 10/4/22.
//

import SwiftUI

struct HeaderView: View {
    
    // value can be accessed by other views
    @Binding var menuShowing: Bool
    
    
    var body: some View {
        VStack { // V0
            Image("header-logo")
            
            ZStack { //Z0
                
                Button { // B0
                   
                    menuShowing.toggle()
                    
    
                        
                    
                } label: { // L0
                    
                    
                        Hamburger()
                            .rotationEffect(menuShowing ? (Angle(degrees: 90)) : (Angle(degrees: 0)))
                        
                    
                    
                    /*
                    if(!menuShowing){ // IF
                        VStack{ // V1
                            ColoredIcon(icon: "HLine", color: .accentColor)
                            ColoredIcon(icon: "HLine", color: .accentColor)
                            ColoredIcon(icon: "HLine", color: .accentColor)
                       
                            
                        } // V1
                        .foregroundColor(Color.red)
                        
                    } // IF
                    else { //ELSE
                        HStack { // H0
                            ColoredIcon(icon: "VLine", color: .accentColor)
                            ColoredIcon(icon: "VLine", color: .accentColor)
                            ColoredIcon(icon: "VLine", color: .accentColor)
                    
                           
                
                        } // H1
                        
                    } //ELSE
                    */
                    
                    
                } // L0
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,15)
           

                
                
                Text("MyHazen")
                    .font(.loginPrompt)
                    .foregroundColor(Color.accentColor)
                    .frame(maxWidth: .infinity, alignment: .center)
            } //Z0
           
        } // V0
        .frame(maxWidth: .infinity, maxHeight: 40, alignment: .center)
        .padding(.bottom,20)
        
        
        
        
    }
}
            

struct HeaderView_PreviewsTrue: PreviewProvider {
    static var previews: some View {
        HeaderView(menuShowing: .constant(true))
    }
}

struct HeaderView_PreviewsFalse: PreviewProvider {
    static var previews: some View {
        HeaderView(menuShowing: .constant(false))
    }
}


struct Hamburger : View {


    var body: some View {
        VStack {
            Image("HLine")
                .renderingMode(.template)
                .foregroundColor(Color.accentColor)
            
            Image("HLine")
                .renderingMode(.template)
                .foregroundColor(Color.accentColor)
            
            Image("HLine")
                .renderingMode(.template)
                .foregroundColor(Color.accentColor)
                .transition(.move(edge: .top))
        }
    }
}
