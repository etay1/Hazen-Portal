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
            
            
                VStack { //V0
                    HeaderView(menuShowing: $menuShowing)
                    ScrollView {//S1

                            Group { //G1
                                Text("Create an appointment")
                                    .font(.myHazen)
                                    .foregroundColor(Color("AccentColor"))
                                    .padding([.bottom], 15)
                                
                                Group { //G2
                                    
                                    //Text/Menu 1 ----
                                    
                                    Text("Location")
                                        .font(.loginPrompt)
                                        .foregroundColor(Color("AccentColor"))
                                    
                                    Menu {
                                        Button(action: {
                                            locationPicked = "Select a location"
                                        }, label: {
                                            Text("Select a location")
                                        })
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
                                            reasonPicked = "Reason for visit"
                                            
                                        }, label: {
                                            Text("Reason for visit")
                                            
                                        })
                                        Button(action: {
                                            reasonPicked = "Reason 1"
                                        }, label: {
                                            
                                            Text("Reason 1")
                                                .foregroundColor(Color("AccentColor"))
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
                                    
                                    
                                    
                                    //Text for Date Picker
                                    Text("Select a Date")
                                        .font(.loginPrompt)
                                        .foregroundColor(Color("AccentColor"))
                                        .padding([.top], 15)
                                    
                                } //G2
                                .frame(alignment: .leading)
                                
                                // Date Picker ----------------------
                                
                                DatePicker("Date: ", selection: $date)
                                    .datePickerStyle(GraphicalDatePickerStyle())
                                    .foregroundColor(.accentColor)
                                
                                //-------------------------
                                
                                VStack (alignment: .leading){ //V1
                                    Group { //G3
                                        Text("Use the instructions above to search for an available appointment time.These appointments are for non-lifethreatening concerns. If your symptoms or concerns worsen before your scheduled appointment, please call 585-395-2414. If this is a medical emergency, please call University Police at x2222 if on campus, or dial 911. If this is a mental health crisis, text the Crisis Text Line -- Need someone to talk to? Text “Got5U” to 741-741 Free, 24/7, Confidential text support.")
                                            .foregroundColor(.accentColor)
                                        //.border(.red)
                                        
                                        Text("If you have ANY of the following, call the Health Center at: (585) 395-2414, immediately to speak to a nurse: \nchest pain or shortness of breath \neye pain \nsevere abdominal pain \ntesticular pain  ")
                                            .foregroundColor(.red)
                                        
                                        Text("If you do not find the reason you are looking for, or need a different time, please call:\n(585)395-2414) for Health or Counseling Center\n(585) 395-5374 for Sports Medicine-Athletic Training")
                                            .foregroundColor(.red)
                                        
                                        Text("If you are 10 or more minutes late to your scheduled appointment, you may need to be rescheduled for another day")
                                            .foregroundColor(.accentColor)
                                            .underline()
                                
                                        
                                    } //G3
                                    .multilineTextAlignment(.center)
                                    .padding([.bottom], 5)
                                    
                                } //V1
                                .padding([.leading], 15)
                                .font(.headerText)
                                
                                //-------------------------
              
                            } //G1
                            .frame(maxWidth: .infinity,maxHeight: .infinity)
                           
                
                
                    
                }//S
                        .frame(maxWidth: .infinity,maxHeight: .infinity)
                        .padding([.leading], 15)
                        .disabled(menuShowing ? true: false)
                        .blur(radius: menuShowing ? 5: 0)
                
       
                if(menuShowing) {
                    MenuView(menuShowing: $menuShowing, size: 40)
                        .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .center)
                }
    
                
            } .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(Color("Background"))
                .navigationBarHidden(true)
 
        }
}
/*
func TextLine(text: String) -> some View {
    Text(text)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
       // .border(.red)
        .foregroundColor(.accentColor)
        .font(.iconText)
    
}
*/
struct AppointmentView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentView()
    }
}


