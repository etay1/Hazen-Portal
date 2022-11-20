//
//  FormsRootView.swift
//  Hazen Portal
//
//  Created by Elijah Tay on 11/18/22.
//

import SwiftUI

struct FormsRootView: View {
    @State private var menuShowing = false

    var body: some View {
        VStack { //V0
            HeaderView(menuShowing: $menuShowing)
            
            ScrollView { //S
                
                VStack (alignment: .leading) { //V1
                    
                    Text("Forms")
                        .font(.myHazen)
                        .foregroundColor(Color("AccentColor"))
                        .padding([.leading,.bottom], 15)
              
                } //V1
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                //-------------------------
                
                
                
                
                
            }//S
                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .center)
                    //.border(.red)
                    .padding([.bottom], 15)
                    .disabled(menuShowing ? true: false)
                    .blur(radius: menuShowing ? 5: 0)
                
                if(menuShowing) {
                    MenuView(menuShowing: $menuShowing, size: 40)
                        .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .center)
                    //  .border(.red)
                         
                }
                 
                
            }//V0
            .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color("Background"))//V0
        
        
        
        
        
        
        
        
    }
}

struct FormsRootView_Previews: PreviewProvider {
    static var previews: some View {
        FormsRootView()
    }
}
