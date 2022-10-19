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
                
                VStack {
                    
                    VStack {
                        Image("img-logoM")
                        
                        Text("MyHazen")
                            .foregroundColor(.accentColor)
                            .font(.loginDetails)
                            .underline(color: .accentColor)
                    }
                    .padding(25)
                    .frame(alignment: .top)
                    //.border(.red)
                        
                    //---------------------------------------------
                    
                        
                    Text("Login")
                        .font(.loginDetails)
                      
                        //.border(.red)
                
                    //-------------------
                    
                    Group {
                        
                        TextField("NetId" + "@Brockport.edu", text: $username)
                            .padding()
                            .frame(width:351, height: 65)
                            .background(Color.black.opacity(0.05))
                            .border(Color.accentColor, width:3)
                        
                            // border color for incorrect credentials
                            .border(.red, width: CGFloat(wrongUsername))
                            .cornerRadius(7)
                            .autocorrectionDisabled(true)
                        
                    //-------------------
                        
                        SecureField("Password", text: $password)
                            .padding()
                            .frame(width:351, height: 65)
                            .background(Color.black.opacity(0.05))
                        
                            // default border color
                            .border(Color.accentColor, width:3)
                            // border color for incorrect credentials
                            .border(.red, width: CGFloat(wrongPassword))
                            .cornerRadius(7)
                            .autocorrectionDisabled(true)
                        
                    //-------------------
                    
                        Link("Forgot Password?",
                             destination: URL(string: "https://bannerprod.brockport.edu/pls/prod/bwzkntid.PW_Entrypoint")!)
                        .frame(maxWidth: 351, maxHeight: 21, alignment: .trailing)
                      //  .border(.red)
                        
                    } //Group ends
                    .font(.loginPrompt)
                    
                    //-------------------
             
                    Button(action: {
                        authenticateUser(username: username, password: password)
                        
                    }) {
                        Text("Login")
                            .foregroundColor(Color("Background"))
                            .frame(width:351, height:65)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                            .padding([.top], 20)
                        
                    }
                    
                    
                    .navigationDestination(isPresented: $showingLoginScreen) {
                        HomeView()
            
                    }
                    
                    //---------------------------------------------
                    
                    
                }
                //.border(.red)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color("Background"))
                .foregroundColor(.accentColor)
                
               
            }
            .navigationBarHidden(true)
            
        }
        //this border does it for every page
        //.border(.red)
       
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
