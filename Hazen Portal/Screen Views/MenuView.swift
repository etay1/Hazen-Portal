//
//  MenuView2.swift
//  Hazen Portal
//
//  Created by Corey Bright on 10/12/22.
//

import SwiftUI



struct MenuView: View {
    @State private var isshowingLogin = false
    @Binding var menuShowing : Bool
    
    var size: CGFloat
    
    var body: some View {
        
        NavigationStack{
            
            HStack(spacing:size) {
                
                VStack{
            
                        NavigationLink(destination: AppointmentView(), label: {
                            Image(systemName: "calendar")
                                .font(.largeTitle)
                                .frame(width:81.71, height:76.82)
                                .background(Color("AccentColor"))
                                .foregroundColor(Color("Background"))
                                .cornerRadius(10)
                            
                        })
                    
                    Text("Appointments")
                        .font(.iconText)
                        .foregroundColor(Color("AccentColor"))
                }
                VStack{
                  
                        NavigationLink(destination: Text("Hello world"), label: {
                            Image(systemName: "arrow.up.doc")
                                .font(.largeTitle)
                                .frame(width:81.71, height:76.82)
                                .background(Color("AccentColor"))
                                .foregroundColor(Color("Background"))
                                .cornerRadius(10)
                            
                        })
                    
                    Text("Upload")
                        .font(.iconText)
                        .foregroundColor(Color("AccentColor"))
                }
                
    
            }
            HStack(spacing:size) {
                
                VStack{
                    
                        NavigationLink(destination: Text("Hello world"), label: {
                            Image(systemName: "syringe")
                                .font(.largeTitle)
                                .frame(width:81.71, height:76.82)
                                .background(Color("AccentColor"))
                                .foregroundColor(Color("Background"))
                                .cornerRadius(10)
                            
                        })
                    
                    Text("Immunizations")
                        .font(.iconText)
                        .foregroundColor(Color("AccentColor"))
                }
                VStack{
                    
                        NavigationLink(destination: SettingsView(), label: {
                            Image(systemName: "umbrella")
                                .font(.largeTitle)
                                .frame(width:81.71, height:76.82)
                                .background(Color("AccentColor"))
                                .foregroundColor(Color("Background"))
                                .cornerRadius(10)
                            
                        })
                    
                    Text("Insurance")
                        .font(.iconText)
                        .foregroundColor(Color("AccentColor"))
                }
                
    
            }
            HStack(spacing:size) {
                
                VStack{
                
                        NavigationLink(destination: Text("Hello world"), label: {
                            Image(systemName: "list.clipboard")
                                .font(.largeTitle)
                                .frame(width:81.71, height:76.82)
                                .background(Color("AccentColor"))
                                .foregroundColor(Color("Background"))
                                .cornerRadius(10)
                            
                        })
                    
                    Text("Forms")
                        .font(.iconText)
                        .foregroundColor(Color("AccentColor"))
                }
                VStack{
                   
                        NavigationLink(destination: Text("Hello world"), label: {
                            Image(systemName: "envelope")
                                .font(.largeTitle)
                                .frame(width:81.71, height:76.82)
                                .background(Color("AccentColor"))
                                .foregroundColor(Color("Background"))
                                .cornerRadius(10)
                            
                        })
                    
                    Text("Messages")
                        .font(.iconText)
                        .foregroundColor(Color("AccentColor"))
                }
                
    
            }
            HStack(spacing:size) {
                
                VStack{
                   
                        NavigationLink(destination: EducationView(), label: {
                            Image(systemName: "bell")
                                .font(.largeTitle)
                                .frame(width:81.71, height:76.82)
                                .background(Color("AccentColor"))
                                .foregroundColor(Color("Background"))
                                .cornerRadius(10)
                            
                        })
                    
                    Text("Resources")
                        .font(.iconText)
                        .foregroundColor(Color("AccentColor"))
                }
                
                VStack{
                    
                    
                    NavigationLink(destination: LoginView(), label: {
                           
                            Image(systemName: "arrow.backward.square")
                                .font(.largeTitle)
                                .frame(width:81.71, height:76.82)
                                .background(Color("AccentColor"))
                                .foregroundColor(Color("Background"))
                                .cornerRadius(10)
                            
                            
                        })
                    
                    Text("Logout")
                        .font(.iconText)
                        .foregroundColor(Color("AccentColor"))
                }
                
    
            }
            
            
       }//.frame(maxWidth: .infinity,maxHeight: .infinity)
//            .background(Color("Background"))
//            .foregroundColor(Color("Background"))
//            .border(.red)
            
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(menuShowing: .constant(false), size:80)
    }
}

