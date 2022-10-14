//
//  Header.swift
//  Hazen Portal
//
//  Created by Corey Bright on 10/4/22.
//

import SwiftUI

struct HeaderView: View {
    @State private var menuShowing = false
    
    
    var body: some View {
        
        Image("header-logo")
        Text("MyHazen")
        
       /* if (menuShowing == false) {
            
            
            Button {
                menuShowing = true
            } label: {
                
                Image(systemName: "arrow.right")
                    .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                    .padding([.leading], 15)
            }
            
        }*/
        
    }
}
            

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
