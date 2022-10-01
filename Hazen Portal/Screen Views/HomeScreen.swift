//
//  HomeScreen.swift
//  Hazen Portal
//
//  Created by Corey Bright on 9/29/22.
//

import Foundation

import SwiftUI

struct HomeScreen: View {
    
    var body: some View {

        
        ZStack{
            NavigationStack {
                
                ZStack {
                    Color("Background")
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {

                        Image("img-header")
                    }
                }
            }
            navigationBarHidden(true)
        }
            
        /*
         So I'm thinking we he have a VStack here
            This will make all elements in here align vertically
            I cant test it now but when I get to the library I will
         
         Either a single v stack that has the elements wrap after every 2 icons
         VStack {
             Button (with an icon parameter)
             Button (with an icon parameter)
             wraps
             Button (with an icon parameter)
             Button (with an icon parameter)
             wraps
             Button (with an icon parameter)
             Button (with an icon parameter)
             wraps
             Button (with an icon parameter)
             Button (with an icon parameter)
         }
         
         ORRRR
         4 VStacks like this
         
         VStack{
            Button (with an icon parameter)
            Button (with an icon parameter)
         
         }
         VStack{
            Button (with an icon parameter)
            Button (with an icon parameter)
         }
         VStack{
            Button (with an icon parameter)
            Button (with an icon parameter)
         }
         VStack{
            Button (with an icon parameter)
            Button (with an icon parameter)
         }
         
         
         Then each button will just have a non authenticated destination to each page in the method body
         
         AppointmentScreen()
         MessagesScreen()
         etc...
         
         The issue here is that I dont think we can use an icon as a parameter it might force us to use a string
         so if thats the case we can try to create a frame instead and somehow have the frame navigate as a button
         but ill trial and error it tomorrow and try a few methods when i can preview everything
         
         */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

