//
//  SettingsView.swift
//  Hazen Portal
//
//  Created by Corey Bright on 10/21/22.
//

import SwiftUI





struct SettingsView: View {
    
  
    // gets menuShowing value from headerView
    @State private var menuShowing = false
    
    @State private var fullName = "Corey Bright"
    @State private var prefferedName = ""
    @State private var address = ""
    @State private var address2 = ""
    @State private var state = ""
    @State private var city = ""
    @State private var zip = ""
    @State private var email = ""
    @State private var homePhone = ""
    @State private var workPhone = ""
    @State private var cellPhone = ""
    @State private var prefferedPhone: String = "Cell"
    
    // checked boxes
    @State private var box1 = false
    @State private var box2 = false
    @State private var box3 = false
    @State private var box4 = false
    @State private var box5 = false
    @State private var box6 = false
    @State private var box7 = false
    @State private var box8 = false
    

    // opt in section
    @State private var canRecieveTextMessages = false
    // gender identity
    @State private var isAdditionalGender = false
    @State private var isNonDisclosure = false
    @State private var isFemale = false
    @State private var isGenderqueer = false
    @State private var isMale = false
    @State private var isTransWoman = false
    @State private var isTransMan = false

    var body: some View {
        VStack {
            
            HeaderView(menuShowing: $menuShowing)
            ScrollView {
                
                
                Text(fullName)
                    .font(.myHazen)
                    .font(.socialMedia)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .foregroundColor(.accentColor)

//                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
//                    .border(.red)
//                    .padding([.leading], 15)
                Text("edit your profile")
                    .foregroundColor(.accentColor)
                    .font(.socialMedia)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    //.border(.red)
              
                
                    Group {
                        Text("Preffered Name")
                            .font(.loginPrompt)
                        TextField(text: "Name", input: $prefferedName)
                        
                        Text("Adress")
                            .font(.loginPrompt)
                        TextField(text: "Address", input: $address)
                        
                        Text("Adress 2")
                            .font(.loginPrompt)
                        TextField(text: "Adress 2", input: $address2)
                        
                        Text("City")
                            .font(.loginPrompt)
                        TextField(text: "City", input:$city)
                        
                        Text("State")
                            .font(.loginPrompt)
                        TextField(text: "State", input: $state)
                        
                    }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .foregroundColor(.accentColor)
                       // .border(.red)
                        
                    
                Group {
                    
                    Text("Home Phone")
                        .font(.loginPrompt)
                    TextField(text: "Home Phone", input: $homePhone)
                    
                    Text("Work Phone")
                        .font(.loginPrompt)
                    TextField(text: "Work Phone", input: $workPhone)
                    
                    Text("Cell Phone")
                        .font(.loginPrompt)
                    TextField(text: "Cell Phone", input: $cellPhone)
                    
      
                
                    Group {
                        Text("Preferred Phone Number")
                            .font(.loginPrompt)
                        
                        
                        
                        Menu {
                            Button(action: {
                                prefferedPhone = "Home"
                            }, label: {
                                Text("Home")
                            })
                            Button(action: {
                                prefferedPhone = "Work"
                            }, label: {
                                Text("Work")
                            })
                            Button(action: {
                                prefferedPhone = "Cell"
                            }, label: {
                                Text("Cell")
                            })
                        }
                        // menu label
                        label: {
                            Label (title: {Text("\(prefferedPhone)").font(.loginPrompt) },
                                   icon: {Image(systemName: "chevron.down")}
                            )
                            .frame(width:215, height: 40)
                            .background(Color.black.opacity(0.05))
                            .border(Color.accentColor, width:1)
                            
                            
                        }
                        CheckBoxView(checked: $box1, category: $canRecieveTextMessages, text: "I would like to receive SMS text message reminders. Message and data rates may apply. Message frequency varies.")
                            .font(.headerText)
                        Group {
                          
                            Text("Text HELP for help. Text STOP to cancel.")
                            Text("Messages will include appointment reminder notifications, secure message notifications and other important updates.")
                            
                            HStack{
                                Text("For Terms:")
                                Link("https://medicat.com/sms-service/",
                                      destination: URL(string: "https://medicat.com/sms-service/")!)
                            }
                            HStack{
                               // .padding()
                                Text("For privacy policy:")
                                Link("https://medicat.com/privacy-policy/",
                                      destination: URL(string: "https://medicat.com/privacy-policy/")!)
                            }
                            
                        }.padding([.leading],23)
                            .font(.headerText)
                        
                        Text("Gender Identity (Check all that apply)")
                            .font(.loginPrompt)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                            .padding([.top,.bottom], 15)
                      
                        Group {
                            
        
                            CheckBoxView(checked: $box2, category: $isAdditionalGender, text: "Additional gender category/(or other), please specify")
                            CheckBoxView(checked: $box3, category: $isNonDisclosure, text: "Choose not to disclose")
                            CheckBoxView(checked: $box4, category: $isFemale, text: "Female")
                            CheckBoxView(checked: $box5, category: $isGenderqueer, text: "Genderqueer, neither exclusively male nor female")
                            CheckBoxView(checked: $box6, category: $isMale, text: "Male")
                            CheckBoxView(checked: $box7, category: $isTransMan, text: "Transgender female/Trans woman/Male-to-female")
                            CheckBoxView(checked: $box8, category: $isTransWoman, text: "Transgender male/Trans male/Female-to-male")
                            
                            
                        }.font(.headerText)
                     
       
                    }
                
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .foregroundColor(.accentColor)
                    //.border(.red)
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
               // .border(.red)
                .padding([.leading], 15)
                .disabled(menuShowing ? true: false)
                .blur(radius: menuShowing ? 5: 0)
            
            if(menuShowing) {
                MenuView(menuShowing: $menuShowing, size: 40)
                    .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .center)
             
                     
                
            }
        }.background(Color("Background"))
    }
}
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}


// fucntion that returns a textfield view with desired styling
func TextField (text: String, input: Binding<String>) -> some View {
    
    return(
    
        TextField(text, text: input)
            .padding()
            .multilineTextAlignment(.leading)
            .frame(width:351, height: 30)
            .background(Color.black.opacity(0.05))
            .border(Color.accentColor, width:1)
            .cornerRadius(2)
            .multilineTextAlignment(.leading)
            
            
    )
}


struct CheckBoxView: View {
    @Binding var checked: Bool
    @Binding var category : Bool
    
    var text: String
    

    var body: some View {
        
        HStack {
            Image(systemName: checked ? "checkmark.square.fill" : "square")
                .foregroundColor(checked ? Color("AccentColor") : Color.secondary)
                .onTapGesture {
                    self.category.toggle()
                    self.checked.toggle()
                }
            Text(text)
        }
    }
}
