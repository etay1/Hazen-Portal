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
        
        Image("header-logo")
        Text("MyHazen")
        
        
        Button {
            menuShowing.toggle()
            
        } label: {
            if(menuShowing){
                Image(systemName: "arrow.down")
                    .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                    .padding([.leading], 15)
            }
            else {
                Image(systemName: "arrow.right")
                    .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                    .padding([.leading], 15)
            }
        }
        
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
