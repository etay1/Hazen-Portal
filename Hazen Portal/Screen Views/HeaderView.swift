//
//  Header.swift
//  Hazen Portal
//
//  Created by Corey Bright on 10/4/22.
//

import SwiftUI

struct HeaderView: View {

    var body: some View {
                 
        Image("header-logo")
         //   .offset(y:-65)
        Text("MyHazen")
           // .offset(y:-65)
                        
    }
    
}
            

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.fixed(width:375, height: 80))
    }
}
