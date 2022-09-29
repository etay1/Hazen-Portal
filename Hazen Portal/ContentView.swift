//
//  ContentView.swift
//  Hazen Portal
//
//  Created by Elijah Tay on 9/20/22.
//

import SwiftUI

struct ContentView: View {
    
    
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
                        Text("Login")
                            .font(.loginDetails)
                            .foregroundColor(.accentColor)
                            .padding()
                        
                        TextField("NetId" + "@Brockport.edu", text: $username)
                            .font(.loginPrompt)
                            .padding()
                            .frame(width:351, height: 65)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10) // ins't working
                        
                        // default border color
                            .border(Color.accentColor, width:2)
                        // border color for incorrect credentials
                            .border(.red, width: CGFloat(wrongUsername))
                        
                        SecureField("Password", text: $password)
                            .font(.loginPrompt)
                            .padding()
                            .frame(width:351, height: 65)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                        // default border color
                            .border(Color.accentColor, width:2)
                        // border color for incorrect credentials
                            .border(.red, width: CGFloat(wrongPassword))
                        
                        Button("Login") {
                            authenticateUser(username: username, password: password)
                        }
                        .foregroundColor(.white)
                        .frame(width:351, height:65)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        
                        // outdated in ios 16, don't know how to update
                        .navigationDestination(isPresented: $showingLoginScreen) {
                            Text("You are logged in @\(username)")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
