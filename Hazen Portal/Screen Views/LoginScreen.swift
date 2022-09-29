//
//  LoginScreen.swift
//  Hazen Portal
//
//  Created by Corey Bright on 9/29/22.
//

import Foundation
import SwiftUI

struct LoginScreen: View {
    
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
  
    
    var body: some View {
  
        ZStack{
            NavigationStack {
                
                ZStack {
                    Color("Background")
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        
                        Image("img-logoM")
                        
                        Text("MyHazen")
                            .foregroundColor(.accentColor)
                            .font(.loginDetails)
                            .underline(color: .accentColor)
                        

                        
                        Text("Login")
                            .font(.loginDetails)
                            .foregroundColor(.accentColor)
                            .padding()
                        
                        TextField("NetId" + "@Brockport.edu", text: $username)
                            .font(.loginPrompt)
                            .padding()
                            .frame(width:351, height: 65)
                            .background(Color.black.opacity(0.05))
                            // ins't working
                            
                        
                        // default border color
                            .border(Color.accentColor, width:3)
                        // border color for incorrect credentials
                            .border(.red, width: CGFloat(wrongUsername))
                            .cornerRadius(7)
                            .autocorrectionDisabled(true)
                        
                        SecureField("Password", text: $password)
                            .font(.loginPrompt)
                            .padding()
                            .frame(width:351, height: 65)
                            .background(Color.black.opacity(0.05))
                            
                        
                        // default border color
                            .border(Color.accentColor, width:3)
                        // border color for incorrect credentials
                            .border(.red, width: CGFloat(wrongPassword))
                            .cornerRadius(7)
                            .autocorrectionDisabled(true)
                        
                        Button("Login") {
                            authenticateUser(username: username, password: password)
                        }
                        .foregroundColor(.white)
                        .frame(width:351, height:65)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        
                      
                        .navigationDestination(isPresented: $showingLoginScreen) {
                            
                            HomeScreen()
            
                        }
                        
                        
                    }
                    
                }
                
            }
            .navigationBarHidden(true)
            
        }
       
    }
    
    //authenitcates user, will be changed later to make use of firebase data
    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "brockport" {
            wrongUsername = 0
            if password.lowercased() == "brockport" {
                wrongPassword = 0
                showingLoginScreen = true
                
            } else {
                wrongPassword = 2
            }
            
        } else {
            wrongPassword = 2
        }
    }
    
}

