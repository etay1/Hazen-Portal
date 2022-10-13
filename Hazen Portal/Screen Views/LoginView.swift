//
//  LoginScreen.swift
//  Hazen Portal
//
//  Created by Corey Bright on 9/29/22.
//

import Foundation
import SwiftUI

struct LoginView: View {
    
    
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
                            .foregroundColor(Color("AccentColor"))
                            .padding()
                            .frame(width:351, height: 65)
                            .background(Color.black.opacity(0.05))
                       
                            
                        
                        // default border color
                            .border(Color.accentColor, width:3)
                        // border color for incorrect credentials
                            .border(.red, width: CGFloat(wrongUsername))
                            .cornerRadius(7)
                            .autocorrectionDisabled(true)
                        
                        SecureField("Password", text: $password)
                            .font(.loginPrompt)
                            .foregroundColor(Color("AccentColor"))
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
                        .foregroundColor(Color("Background"))
                        .frame(width:351, height:65)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        
                      
                        .navigationDestination(isPresented: $showingLoginScreen) {
                
                            HomeView()
                
            
                        }
                        
                        
                    }
                    
                }
                
            }
            .navigationBarHidden(true)
            
        }
       
    }
    
    //authenitcates user, will be changed later to make use of firebase data
    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "" {
            wrongUsername = 0
            if password.lowercased() == "" {
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

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
