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
        
        HStack {
            
            Button {
                menuShowing.toggle()
                
            } label: {
                if(menuShowing){
                        Image(systemName: "arrow.down")
                            .border(.red)
                    
                    
                }
                else {
                        Image(systemName: "arrow.right")
                            .border(.red)
                }
                
            }
            
            
            Text("MyHazen")
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .border(.red)
        
        
        
        
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


