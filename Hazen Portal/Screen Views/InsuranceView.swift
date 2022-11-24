
//  InsuranceView.swift
//  Hazen Portal
//
//  Created by Corey Bright on 10/10/22.
//

import SwiftUI

struct InsuranceView: View {
    @State private var menuShowing = false

    @State private var isAddExpanded = false
    @State private var isSubmited = false
    @State private var hasInsurance = true
    //Elijah's addition
    @State private var selectedInsurance = "Insurance Company *"
 
    @GestureState private var dragOffset = CGSize.zero

    let insuranceType = ["Company not listed", "Anthem BCBS Georgia", "Anthem BCBS Ohio", "Anthem BCBS Virginia", "BCBS Illinois", "BCBS NJ Horizon", "BCBSMN", "Blue Cross And Blue Shield of Massachusetts", "Blue Cross And Blue Shield of California", "Blue Cross And Blue Shield of Michigan", "Blue Cross And Blue Shield of Western New York", "Blue Cross And Blue Shield of Eastern New York", "BSCal", "CDPHP", "Cigna", "Emblem Health", "Empire Blue Cross and Blue Shield New York", "Excellus Blue Cross Blue Shield Rochester NY", "Fidelis Care", "GHI-Group Haelth Incorporated", "Healthfirst", "Healthsmart", "Hometown Health", "Horizon Blue Cross & Blue Shield of New Jersey", "Independent Health", "Kaiser Foundation Health Plan Of S CA", "Lucent Health", "Magnacare", "Medica", "Medicaid New York", "Medical Insurance", "MetroPlus Health Plan", "Molina Health Care", "Molina Health Care of Michigan", "Molina Health Care of Washington", "MVP Health Care", "NOVA", "Paramount Health Care", "Tricare (military)", "Trustmark Life Insurance Co.", "UMR WAUSAU/UHIS", "United Health Care Community Plan", "United Health Care Student Resources", "United Health Care Worker 1199", "United HealthCare", "United Healthcare ORACLE", "United Healthcare Oxford", "Univera Community Health"]
    //-- addition over
    @State private var insuranceCompany = ""
    @State private var policyNumber = ""
    @State private var groupNumber = ""
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthDate = ""
    @State private var relationToSubscriber = ""
    
    
    
    // choices of documents to upload
    

   
    
    var body: some View {
        
        ZStack {
            VStack { // V0
                HeaderView(menuShowing: $menuShowing)
                 
           
                ScrollView { // S
                    
                    VStack (alignment: .leading, spacing: 10) { // V1
                        Text("Insurance")
                        Text("To enter you current Health Insurance information (This is MANDATORY FOR ATHELTES):")
                        
                    } // V1
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .padding([.leading,.trailing], 15)
                    .foregroundColor(Color.accentColor)
                    
                    //-------------------------------------------------------------
                    
                    
                    VStack (alignment: .leading) { // V2
                        BulletPointView(text: "Save a copy of the front and back of your insurance card serperately on your phone.")
                        
                        Text("Card needs to be saved in one of the following formats: .gif, .png, .tiff, .jpeg.")
                            .padding([.bottom,.trailing], 10)
                            .padding(.leading, 40)
                        Spacer(minLength: 0)
                        BulletPointView(text: "Click \"Add New\" Button.")
                        BulletPointView(text: "REQUIRED: You must enter the Insurance Commpany name and Policy number than click \"Add\" button.")
                        BulletPointView(text: "Group # and Policy Holder information is optional.")
                        BulletPointView(text: "Upload the front and back of your insurance card ONE AT A TIME OR YOU WILL GET AN ERROR MESSAGE - Use the \"Upload\" button labelled \"Front\" and \"Back\" at right of screen next to the information you entered.")
                        
                        
                    }// V2
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .foregroundColor(Color.accentColor)
                    .padding([.leading],15)
                    .padding([.top,.trailing], 10)
                    
                    //-------------------------------------------------------------
                    
                    VStack(alignment: .leading) { // V3
                        Button(action: {
                            isAddExpanded.toggle()
                        }) {
                            Text("Add New")
                                .frame(width:100, height:30)
                                .background(Color.accentColor)
                                .foregroundColor(Color("Background"))
                                .cornerRadius(8)
                        }
                    } // V3
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .padding([.leading,.trailing], 15)
                    .foregroundColor(Color.accentColor)
                    
                    
                    //-------------------------------------------------------------
                    if (isAddExpanded && !isSubmited) { //IF
                        VStack(alignment: .leading, spacing:10) { // V4
                            
                            Text("New Insurance")
                                .frame(maxWidth: .infinity, minHeight: 30, alignment: .leading)
                                .padding(.leading, 15)
                                .background(Color.accentColor)
                                .foregroundColor(Color("Background"))
                            
                            /*
                             TextAndTextField(text: "Insurance Company *", textFieldText: "Insurance Company", variable: $insuranceCompany)
                             //  .padding([.top],10)*/
                            // Elijah's addition ---------------------------
                            Menu {
                                
                                Picker(selection: $selectedInsurance, label: EmptyView()){
                                    
                                    
                                    ForEach(insuranceType, id: \.self) {
                                        Text("\($0)")
                                    }
                                    
                                }
                                .tint(Color("Background"))
                                
                                .background(Color("AccentColor"))
                            } label: {
                                CustomLabel(text: selectedInsurance)
                                
                                
                            }.fixedSize(horizontal: true, vertical: false) //  makes box adjust depending on how long the text is
                                .frame(height: 30)
                                .padding([.leading,.trailing], 10)
                                .foregroundColor(Color("Background"))
                                .background(Color("AccentColor"))
                                .cornerRadius(8)
                            
                            //Elijah's Addition over ---------------------------------------
                            
                            TextAndTextField(text: "Policy Number *", textFieldText: "Policy Number", variable: $policyNumber)
                            
                            TextAndTextField(text: "Group Number", textFieldText: "Group Number", variable: $groupNumber)
                            
                            
                            
                            
                            
                        } // V4
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        .padding([.leading,.trailing], 15)
                        .padding(.top, 10)
                        .foregroundColor(Color.accentColor)
                    } // IF
                    
                    //-------------------------------------------------------------
                    
                    if (isAddExpanded && !isSubmited) { // IF
                        VStack (alignment: .leading, spacing:10) { // V5
                            
                            Text("Policy Holder Information")
                                .frame(maxWidth: .infinity, minHeight: 30, alignment: .leading)
                                .padding(.leading, 15)
                                .background(Color.accentColor)
                                .foregroundColor(Color("Background"))
                            
                            
                            
                            TextAndTextField(text: "First Name", textFieldText: "First Name", variable: $firstName)
                            
                            TextAndTextField(text: "Last Name", textFieldText: "Last Name", variable: $lastName)
                            
                            TextAndTextField(text: "Birth Date", textFieldText: "mm/dd/yyyy", variable: $birthDate)
                            
                            TextAndTextField(text: "Student Relationship to Subscriber", textFieldText: "Relationship", variable: $relationToSubscriber)
                            
                            SubmitButton(isSubmmited: $isSubmited)
                            
                            
                            
                            
                            
                            
                        } // V5
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        .padding([.leading,.trailing,.top], 15)
                        .foregroundColor(Color.accentColor)
                    } //IF
                    
                    
                    //-------------------------------------------------------------
                    VStack (alignment: .leading) { // V6
                        Text("Insurance on FIle")
                            .frame(maxWidth: .infinity, minHeight: 30, alignment: .leading)
                            .padding(.leading, 15)
                            .background(Color.accentColor)
                            .foregroundColor(Color("Background"))
                        
                        
                        
                    } // V6
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .padding([.leading,.trailing,.top], 15)
                    .foregroundColor(Color.accentColor)
                    
                    // only occurs if user has insurance on file
                    if (hasInsurance) {
                        HStack (alignment: .top){
                            VStack (alignment: .leading) {
                                Text("Empire Blue Cross and Blue Shield")
                                Spacer()
                                Text("Policy Number: ########")
                                Text("Effective date of coveraged: 5/13/2022")
                                
                            }.padding([.bottom, .top], 5)
                            VStack (alignment: .trailing){
                                
                                Text("Entered: 9/05/2021")
                                Spacer()
                                Text("Group Number: ########")
                                HStack (spacing:15) {
                                    Text("View Front")
                                    Text("View Back")
                                }
                                
                                
                            }.padding([.bottom, .top], 5)
                            
                        }.frame(maxWidth: .infinity,maxHeight: .infinity)
                            .border(Color.accentColor)
                            .padding([.leading,.trailing], 15)
                            .font(.iconText)
                        
                    }
                    
                    
                }// S
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                //.padding([.leading], 15)
                .disabled(menuShowing ? true: false)
                .blur(radius: menuShowing ? 5: 0)
                

                
                
            } // V0
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))

            
            
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
struct InsuranceView_Previews: PreviewProvider {
    static var previews: some View {
        InsuranceView()
    }
}

struct TextAndTextField : View {
    var text : String
    var textFieldText: String
    @Binding var variable: String
    var body: some View {
            
        VStack (alignment: .leading, spacing: 2) {
            Text(text)
            TextField(text: textFieldText, input: $variable)
            
            }
           
                
        }
    }


// Allows for back swipe gesture without having the navigation bar title
extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
