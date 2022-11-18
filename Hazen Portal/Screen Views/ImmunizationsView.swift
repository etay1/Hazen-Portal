//
//  ImmunizationsView.swift
//  Hazen Portal
//
//  Created by Elijah Tay on 11/18/22.
//

import SwiftUI

struct ImmunizationsView: View {
    @State private var menuShowing = false
    var body: some View {
        
        VStack { //V0
            HeaderView(menuShowing: $menuShowing)
            
            ScrollView { //S
                
                //--------------------------------------------------
                
                VStack { //V1
                    
                    Text("Immunizations")
                        .foregroundColor(.accentColor)
                        .font(.myHazen)
                        .padding([.leading, .trailing], 15)
                    
                    
                } //V1
                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .leading)
                
                //--------------------------------------------------
                
                GroupBox { // GB
                    
                    Group { //G1
                        Text("COVID VACCINATION REQUIREMENT:  All SUNY Brockport students must be vaccinated for COVID-19 (2 doses of Moderna, 2 doses of Pfizer or 1 Johnson and Johnson) or have an *approved waiver no later than August 8, 2022 in order to attend classes in person and participate in any on-campus activities")

                        Text("All students are strongly encouraged to have the meningitis vaccine within the last 5 years, on or after their 16th birthday. ")
                        
                      
                    } //G1
                    .foregroundColor(.red)
                    .padding([.bottom], 5)

                } // GB
                .groupBoxStyle(ColoredGroupBoxWhite())
                .padding([.leading,.trailing], 10)

                
                //--------------------------------------------------

                
                VStack { //Outer Box 2
                    
                    VStack (alignment:.leading){ //V2
                        
                        Text("MMR (Measles, Mumps, and Rubella) and Meningitis")
                        
                        Text("MANDATORY REQUIREMENTS")
                        Group {
                            Text("Take action as this may impact your ability to attend classes as well as late fees that may be assessed")
                            
                            Text ("Records must be received prior to the start of classes")
                        } .multilineTextAlignment(.leading)
                        
                    }//V2
                    .font(.headerText)
                    .padding([.leading,.trailing], 15)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    // .border(Color("AccentColor"))
                    
                }// V Outer 2
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                // .padding([.leading,.trailing], 15)
                .foregroundColor(Color.accentColor)
                
                //--------------------------------------------------
                
                VStack (alignment: .leading){ //V3
                    Text("Measles, Mumps, Rubella:")
                        .padding([.bottom,.top], 5)
                        .bold(true)
                    Text("New York State Public Health Law #2165: All registered students, regardless of number of credits taken, born on or after January 1, 1957, must provide proof of vaccination of 2 MMRs (Measles, 1 Mumps, 1 Rubella OR Proof of Immunity (titer) against measles, mumps and rubella).")
                }//V3
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .foregroundColor(.accentColor)
                    .padding([.leading,.trailing], 15)
                    .font(.headerText)

                
                //--------------------------------------------------
                
                VStack (alignment: .leading){ //V4
                    Text("Meningitis:")
                        .padding([.bottom], 5)
                        .bold(true)
                    Text("New York State Public Health Law #2167 requires post secondary students to understand the risks and recommendations of meningococcal meningitis vaccination. You must provide the date of your meningitis vaccine-it must be within the last 5 years or waive out of the vaccine.")
                    
                    Text("Meningitis Requirements:")
                        .padding([.bottom, .top], 5)
                        .bold(true)
                    BulletPointView(text: "Submit your immunization record with a Meningitis vaccine date within the last 5 years")
                    Text("OR")
                        .bold(true)
                        .padding([.leading,.trailing],15)
                    BulletPointView(text: "DECLINE the vaccine by going to the \"FORMS\" tab and completing the waiver form after reviewing the information")
                    
                }//V4
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .foregroundColor(.accentColor)
                    .padding([.leading,.trailing], 15)
                    .padding([.top,.bottom], 10)
                    .font(.headerText)


                
            }//S
                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .center)
                    //.border(.red)
                    .padding([.bottom], 15)
                    .disabled(menuShowing ? true: false)
                    .blur(radius: menuShowing ? 5: 0)
                
                if(menuShowing) {
                    MenuView(menuShowing: $menuShowing, size: 40)
                        .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .center)
                    //  .border(.red)
                         
                }
                 
                
            }//V0
            .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color("Background"))//V0
                
    }
}

struct ImmunizationsView_Previews: PreviewProvider {
    static var previews: some View {
        ImmunizationsView()
    }
}
