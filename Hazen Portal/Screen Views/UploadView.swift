//
//  UploadView.swift
//  Hazen Portal
//
//  Created by Corey Bright on 11/6/22.
//

import SwiftUI

struct UploadView: View {
    @State private var menuShowing = false
    @State private var bulletPoint = "\u{2022}"
    @State private var documentName = "Pick a document"
    
    @State private var selectedDocument = "select a document"
    @State private var userDocument = ""
    
    @State private var isVerified = false

    @State private var isExpanded = false
    @State private var isSubmited = false
 
    let documentType = ["Athlete Physical", "Clearance Letter For Athletes", "Consent For Release Of Records", "COVID 19 Medical Exemption Letter", "COVID 19 Religious Exemption Letter", "COVID Test Results", "COVID Vaccine Records", "Documentation For Food Accomodations", "HC-Consent For Treatment Of Minors", "Immunization Records", "Medical Information Requested By Health Center", "Paired Organ Waiver", "Sickle Cell Results Submitted Athlete"]
    
    let documentType2 = ["item 1", "item 3", "item 3"]
    
    // choices of documents to upload
    

   
    
    var body: some View {
        ZStack { // Z0
            VStack { // V0
                HeaderView(menuShowing: $menuShowing)
                ScrollView { // S
                    
                    VStack (alignment: .leading) {
                        Text("Upload")
                        GroupBox { // GB
                            
                            VStack (alignment: .leading) { // V2
                                Text("STUDENTS SUBMITTING REQUIRED WEEKLY COVID TESTING RESULTS GO TO: ")
                                
                                
                                Link(destination: URL(string: "https://www.brockport.edu/coronavirus/pool_testing.html")!, label: {
                                    Text("https://www.brockport.edu/coronavirus/pool_testing.html")
                                        .underline()
                                    
                                })
                                
                                Text("\nUPLOADING / FAXING INSTRUCTIONS")
                                Text("Name, Banner ID #, Date of Birth and Sport if applicable,(eg. Baseball are needed on all forms")
                                
                            } // V2
                            
                            VStack (alignment: .leading) { // V3
                                BulletPointView(text: "Scan and save all pages of one document to one file (eg. physical.pdf).")
                                BulletPointView(text: "File should be less than 4 MB and name of document less than 20 characters with no special characters or spaces.")
                                BulletPointView(text: "Review the type of documents you can upload.")
                                BulletPointView(text:"Choose document you are uploading.")
                                BulletPointView(text: "Click Upload button ONCE and then look for the verification of the uploaded document below.")
                                BulletPointView(text: "To upload Insurance Card, go to the Insurance tab. If you upload an insurance card here, it cannot be processed properly.")
                                BulletPointView(text: "Unable to scan and upload forms, fax forms to 585-395-2559.")
                            } // V3
                            
                        }.background(Color("BackgroudColor"))
                        // GB
                            .groupBoxStyle(ColoredGroupBox())
                        
                        
                    } // V1
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .padding([.leading,.trailing], 15)
                    .foregroundColor(Color.accentColor)
                    
                    //.border(.red)
                    
                    
                    VStack (alignment: .leading){ // V4
                        Text("Documents available to be uploaded")
                        Text("Athlete Physical")
                        Text("Clearance Letter For Athletes")
                        Text("Consent For Release Of Records")
                        Text("COVID 19 Medical Exemption Letter")
                        Text("COVID Test Results")
                        Text("COVID Vaccine Records")
                        Text("Documentation For Food Accomodations")
                        Link(destination: URL(string: "https://www.brockport.edu/life/health_center/docs/consent_for_minors.pdf")!, label: {
                            Text("HC-Consent For Treatment Of Minors")
                        })
                        
                        Group { // G1
                            Text("COVID Vaccine Records")
                            Text("Immunization Records")
                            Text("Medical Information Requested By Health Center")
                            Text("Paired Organ Waiver")
                            Text("Sickle Cell Results Submitted Athlete")
                            
                        } // G1
                        
                        
                        
                    } // V4
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .padding([.leading,.trailing,.top], 15)
                    .foregroundColor(Color.accentColor)
                    
                    VStack (alignment: .leading, spacing: 5) { // V5
                        
                        Text("Choose document you are uploading:")
                        Menu {
                            
                            Picker(selection: $selectedDocument, label: EmptyView()){
                                
                                
                                ForEach(documentType, id: \.self) {
                                    Text("\($0)")
                                }
                                
                            }
                            .tint(Color("Background"))
                            
                            .background(Color("AccentColor"))
                        } label: {
                            CustomLabel(text: selectedDocument)
                            
                            
                        }.fixedSize(horizontal: true, vertical: false) //  makes box adjust depending on how long the text is
                            .frame(height: 40)
                            .padding([.leading,.trailing], 10)
                            .foregroundColor(Color("Background"))
                            .background(Color("AccentColor"))
                            .cornerRadius(8)
                        
                        if !isSubmited {
                            switch selectedDocument {
                            case "Athlete Physical" :
                                Text("This is required for New/New Transfer NCAA athletes. Please only submit your physical here. DO NOT USE THIS TITLE TO SEND OTHER DOCUMENTS.")
                                    .bold()
                                if isVerified == false {
                                    UploadButton(boxText: "Select File", outsideBox: "", isVerified: $isVerified,userDocument: $userDocument)
                                }
                                else {
                                    UploadButton(boxText: "Change", outsideBox: userDocument , isVerified: $isVerified, userDocument: $userDocument)
                                    SubmitButton(isSubmmited: $isSubmited)
                                }
                            default:
                                EmptyView()
                            }
                        }
                        
                        
                        
                        
                        
                    } // V5
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .padding([.leading,.trailing,.top], 15)
                    .foregroundColor(Color.accentColor)
                    
                    
                    
                }// S
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                //.padding([.leading], 15)
                .disabled(menuShowing ? true: false)
                .blur(radius: menuShowing ? 5: 0)
                
                
              
                
                
            } // V0
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))
            .navigationBarBackButtonHidden()
            
            if menuShowing { // IF
                VStack { // V-HAM
                    MenuViewOppoColor(menuShowing: $menuShowing, size: 30)
                        .padding(25)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        
                        
                }// V-HAM
            } // IF
            
        } // Z0
        .navigationBarHidden(true)
    }
}

struct SubmitButton : View {

    //@Binding var document : String
    @Binding var isSubmmited : Bool
    
    var body: some View {
        Button(action: {
            
            
            // will eventually implement a function that uploads the file to db
            
            // will implement a fucntion that completely resets view
            
            // if submission is sucessfull
            isSubmmited = true
            
            
        }) {
            
            
            Text("Submit")
                .foregroundColor(Color("Background"))
                .frame(width:75, height:40)
                .background(Color.accentColor)
               // .cornerRadius(10)
            
        }
        
    }
}

struct UploadButton: View {
    var boxText : String
    var outsideBox : String
    @Binding var isVerified : Bool
    @Binding var userDocument : String
    var body : some View {
        HStack {
            Button(action: {
                // will eventually implement a function to allow the user to select an image from  their phone files
                
                // will eventually implement a function that validates the files selected
                isVerified = true
                
                // if document is verfied it will return the document to the main view
                
                // if doc is verified its returns the string of doc
                if isVerified {
                    userDocument = "someDoc.pdf"
                }
                
                
            }) {
                Text(boxText)
                    .foregroundColor(Color("Background"))
                    .fixedSize()
                    .frame(height:40)
                    .padding([.leading,.trailing], 10)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                
                Text(outsideBox) // shows selected file
                
                if isVerified {
                    Button(action: {
                        isVerified = false
                        userDocument = ""
                    }) {
                        Image(systemName: "x.circle")
                    }
                    
                }
            }
        }
    }
}



struct CustomLabel: View {
    var text: String
    var body: some View {
        
        Label (title: {Text("\(text)").font(.loginPrompt) },
          icon: {Image(systemName: "chevron.right")})
       
            
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}


// gives bg color to group box
struct ColoredGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            HStack {
                configuration.label
                    .font(.headline)
               // Spacer()
            }
            
            configuration.content
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 8, style: .continuous)
            .fill(Color("Background"))) // Set your color here!!
        .border(Color("AccentColor"))
       // .cornerRadius(5)
        
    }
}



struct BulletPointView: View {
    var text: String
    var body: some View {
        HStack(alignment: .top) {
            Text("\u{2022}")
            Text(text)
            
        }
        .padding([.leading], 15)
        
            
    }
}



