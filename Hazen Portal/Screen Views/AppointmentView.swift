//
//  AppointmentView2.swift
//  Hazen Portal
//
//  Created by Corey Bright on 10/12/22.
//

import SwiftUI

struct AppointmentView: View {
        @State private var locationPicked: String = "Select a location"
        @State private var reasonPicked: String = "Reason for visit"
    
        @State private var other = ""
        
        @State private var date = Date()
    
    
        // gets menuShowing value from headerView
        @State private var menuShowing = false
    

        

        
        var body: some View {
            
            
                VStack {
                    HeaderView(menuShowing: $menuShowing)
                    ScrollView {

                            Group {
                                Text("Create an appointment")
                                    .font(.myHazen)
                                    .foregroundColor(Color("AccentColor"))
                                    .padding([.bottom], 15)
                                
                                Group {
                                    
                                    //Text/Menu 1 ----
                                    
                                    Text("Location")
                                        .font(.loginPrompt)
                                        .foregroundColor(Color("AccentColor"))
                                    
                                    Menu {
                                        Button(action: {
                                            locationPicked = "Hazen Center"
                                        }, label: {
                                            Text("Hazen Center")
                                        })
                                        Button(action: {
                                            locationPicked = "Zoom"
                                        }, label: {
                                            Text("Zoom")
                                        })
                                    }
                                    // menu label
                                label: {
                                    Label (title: {Text("\(locationPicked)").font(.loginPrompt) },
                                           icon: {Image(systemName: "chevron.down")}
                                    )
                                    .frame(width:215, height: 40)
                                    .foregroundColor(Color("Background"))
                                    .background(Color("AccentColor"))
                                    .cornerRadius(8)
                                }
                                    
                                    
                                    //Text Menu 2 ----
                                    Text("Reason")
                                        .font(.loginPrompt)
                                        .foregroundColor(Color("AccentColor"))
                                    
                                    
                                    Menu {
                                        
                                        Button(action: {
                                            reasonPicked = "Reason 1"
                                            
                                        }, label: {
                                            Text("Reason 1")
                                            
                                        })
                                        Button(action: {
                                            reasonPicked = "Reason 2"
                                        }, label: {
                                            
                                            Text("Reason 2")
                                                .foregroundColor(Color("AccentColor"))
                                        })
                                        Button(action: {
                                            reasonPicked = "Reason 3"
                                        }, label: {
                                            Text("Reason 3")
                                                .foregroundColor(Color("AccentColor"))
                                        })
                                        
                                        Button(action: {
                                            reasonPicked = "Reason for visit"
                                        }, label: {
                                            Text("Reason for visit")
                                        })
                                        
                                    } label: {
                                        Label (title: {Text("\(reasonPicked)").font(.loginPrompt) },
                                               icon: {Image(systemName: "chevron.down")}
                                        )
                                        
                                        .frame(width:215, height: 40)
                                        .foregroundColor(Color("Background"))
                                        .background(Color("AccentColor"))
                                        .cornerRadius(8)
                                    }
                                    
                                    
                                    
                                    //Text menu 2 end --
                                    
                                }// every text menu  - group
                                
                                // other field -----------------------------
       
                            
                                
                            } .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                                .border(.red)
                                .padding([.leading], 15)
                                .disabled(menuShowing ? true: false)
                                .blur(radius: menuShowing ? 5: 0)
                           
                        if(menuShowing) {
                            MenuView(menuShowing: $menuShowing, size: 40)
                                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .center)
                            //  .border(.red)
                                 
                            
                        }
                    
                }
               // .border(.red)
                
            } .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(Color("Background"))
                .navigationBarHidden(true)
                
             //   .border(.red)
            
        }
}

struct AppointmentView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentView()
    }
}

