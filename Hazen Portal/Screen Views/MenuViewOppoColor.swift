//
//  MenuView2.swift
//  Hazen Portal
//
//  Created by Corey Bright on 10/12/22.
//

import SwiftUI



struct MenuViewOppoColor: View {
    @State private var isshowingLogin = false
    @Binding var menuShowing : Bool
    
    var size: CGFloat
    
    var body: some View {
        
        NavigationStack{
            
            HStack (spacing:size) {
                NavigationLink(destination: SettingsView()){
                    Image(systemName: "person.crop.circle")
                        .frame(width:81.71, height:76.82,alignment: .bottom)
                        .font(.system(size: 80))
                        .foregroundColor(Color("Background"))
                        .background(Color.accentColor)
                      //  .clipShape(Circle())
                }
                
                NavigationLink(destination: HomeView()){
                    Image(systemName: "house")
                        .frame(width:81.71, height:76.82, alignment: .bottom)
                        .font(.system(size: 80))
                        .foregroundColor(Color("Background"))
                        .background(Color.accentColor)
                       
                }
          
            }
       
            
            HStack(spacing:size) {
          

                VStack{
            
                        NavigationLink(destination: AppointmentView(), label: {
                            Image(systemName: "calendar")
                                .font(.largeTitle)
                                .frame(width:81.71, height:76.82)
                                .background(Color("Background"))
                             .background(Color("Background"))
                                .cornerRadius(10)
                            
                        })
                    
                    Text("Appointments")
                        .font(.iconText)
                        .foregroundColor(Color("Background"))
                }
                VStack{
                  
                        NavigationLink(destination: UploadView(), label: {
                            Image(systemName: "arrow.up.doc")
                                .font(.largeTitle)
                                .frame(width:81.71, height:76.82)
                                .background(Color("Background"))
                             .background(Color("Background"))
                                .cornerRadius(10)
                            
                        })
                    
                    Text("Upload")
                        .font(.iconText)
                        .foregroundColor(Color("Background"))
                }
                
    
            }
            HStack(spacing:size) {
                
                VStack{
                    
                        NavigationLink(destination: ImmunizationsView(), label: {
                            Image(systemName: "syringe")
                                .font(.largeTitle)
                                .frame(width:81.71, height:76.82)
                                .background(Color("Background"))
                             .background(Color("Background"))
                                .cornerRadius(10)
                            
                        })
                    
                    Text("Immunizations")
                        .font(.iconText)
                        .foregroundColor(Color("Background"))
                }
                VStack{
                    
                        NavigationLink(destination: InsuranceView(), label: {
                            Image(systemName: "umbrella")
                                .font(.largeTitle)
                                .frame(width:81.71, height:76.82)
                                .background(Color("Background"))
                             .background(Color("Background"))
                                .cornerRadius(10)
                            
                        })
                    
                    Text("Insurance")
                        .font(.iconText)
                        .foregroundColor(Color("Background"))
                }
                
    
            }
            HStack(spacing:size) {
                
                VStack{
                
                        NavigationLink(destination: FormsRootView(), label: {
                            Image(systemName: "list.clipboard")
                                .font(.largeTitle)
                                .frame(width:81.71, height:76.82)
                                .background(Color("Background"))
                             .background(Color("Background"))
                                .cornerRadius(10)
                            
                        })
                    
                    Text("Forms")
                        .font(.iconText)
                        .foregroundColor(Color("Background"))
                }
                VStack{
                   
                        NavigationLink(destination: Text("Hello World"), label: {
                            Image(systemName: "envelope")
                                .font(.largeTitle)
                                .frame(width:81.71, height:76.82)
                                .background(Color("Background"))
                             .background(Color("Background"))
                                .cornerRadius(10)
                            
                        })
                    
                    Text("Messages")
                        .font(.iconText)
                        .foregroundColor(Color("Background"))
                }
                
    
            }
            HStack(spacing:size) {
                
                VStack{
                   
                        NavigationLink(destination: ResourcesView(), label: {
                            Image(systemName: "bell")
                                .font(.largeTitle)
                                .frame(width:81.71, height:76.82)
                                .background(Color("Background"))
                             .background(Color("Background"))
                                .cornerRadius(10)
                            
                        })
                    
                    Text("Resources")
                        .font(.iconText)
                        .foregroundColor(Color("Background"))
                }
                
                VStack{
                    
                    
                    NavigationLink(destination: LoginView(), label: {
                           
                            Image(systemName: "arrow.backward.square")
                                .font(.largeTitle)
                                .frame(width:81.71, height:76.82)
                                .background(Color("Background"))
                             .background(Color("Background"))
                                .cornerRadius(10)
                            
                            
                        })
                    
                    Text("Logout")
                        .font(.iconText)
                        .foregroundColor(Color("Background"))
                }
                
    
            }
            
            
       }//.frame(maxWidth: .infinity,maxHeight: .infinity)
//            .background(Color("Background"))
//         .background(Color("Background"))
//            .border(.red)
            
    }
}

struct MenuViewOppoColor_Previews: PreviewProvider {
    static var previews: some View {
        MenuViewOppoColor(menuShowing: .constant(false), size:80)
    }
}

