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
    @State private var isExpanded = false
 
    let documentType = ["Athlete Physical", "Clearance Letter For Athletes", "Consent For Release Of Records", "COVID 19 Medical Exemption Letter", "COVID 19 Religious Exemption Letter", "COVID Test Results", "COVID Vaccine Records", "Documentation For Food Accomodations", "HC-Consent For Treatment Of Minors", "Immunization Records", "Medical Information Requested By Health Center", "Paired Organ Waiver", "Sickle Cell Results Submitted Athlete"]
    
    let documentType2 = ["item 1", "item 3", "item 3"]
    
    // choices of documents to upload
    

    var body: some View {
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
    
                    } // GB
                    .groupBoxStyle(ColoredGroupBox())
            
                    
                } // V1
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding([.leading,.trailing], 15)
                .foregroundColor(Color.accentColor)
                
                
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
                      
             
                           Label (title: {Text("\(selectedDocument)").font(.loginPrompt) },
                                   icon: {Image(systemName: "chevron.right")}
                            )
                           
                         
                    }.fixedSize(horizontal: true, vertical: false)
                        .frame(height: 40)
                        .padding([.leading,.trailing], 10)
                        .foregroundColor(Color("Background"))
                        .background(Color("AccentColor"))
                        .cornerRadius(8)
                     
                        
                        
                                
                    // upload button will eventually be added
                    
                    
                } // V5
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .padding([.leading,.trailing,.top], 15)
                .foregroundColor(Color.accentColor)
            
                
                
            }// S
            
            
        } // V0
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background"))
        .navigationBarBackButtonHidden()
        
        
    }
    var customLabel: some View {
        HStack {
           // Image(systemName: "paperplane")
            Text(String(selectedDocument))
            Spacer()
            Text("⌵")
                .offset(y: -4)
                .foregroundColor(Color("Background"))
        }
        
        .foregroundColor(.white)
        .font(.title)
        .padding()
        .frame(height: 32)
        .background(Color.accentColor)
        .cornerRadius(16)
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
        
    }
}



// gives bg color to group box
struct ColoredGroupBox2: GroupBoxStyle {
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
            .fill(Color("AccentColor"))) // Set your color here!!
        //.border(.black)
        .foregroundColor(Color("Background"))
        .tint(Color("Background"))
        
    }
}





struct BulletPointView: View {
    var text: String
    var body: some View {
            Text("\u{2022}\(text)")
            .padding([.leading], 15)
            
            
    }
}

func BulletPointView2 (text: String) -> some View {
    return(Text("\u{2022}\(text)"))
        .padding([.leading], 15)
    
}


