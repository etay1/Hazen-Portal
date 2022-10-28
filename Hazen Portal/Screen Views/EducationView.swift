//
//  EducationView.swift
//  Hazen Portal
//
//  Created by Elijah Tay on 10/25/22.
//

import SwiftUI

struct EducationView: View {
    @State private var menuShowing = false
    
    var body: some View {
        VStack { //V0
            HeaderView(menuShowing: $menuShowing)
            
            ScrollView { //S
                
                //

                
                VStack (alignment: .leading){ //V1
                    Group { //G1
                        Text("Welcome to My-Hazen your patient portal for the Counseling, Health and Sports Medicine Clinic")
                            .foregroundColor(.accentColor)
                            //.border(.red)
                        
                        Text("CRISIS TEXT LINE --- NEED SOMEONE TO TALK TO? Text \"Got5U\" to 741-741-Free, 24/7, Confidential text support.")
                           // .border(.red)
                        
                        Text("If you have a non-urgent medical or psychiatric concern, call 585-395-2414 and press option 1 for the Nurse Advice line. These nurses do NOT have access to you records and are unable to provice prescription refills, test results or make appointments.")
                           // .border(.red)
                        
                        Text("For emergencies during this time, please call 911 or University Police at 585-395-2222")
                           // .border(.red)
                    } //G1
                    .multilineTextAlignment(.center)
                    .padding([.bottom], 5)
                    

                }//V1

                .padding([.leading], 15)
             
                .font(.headerText)
                .foregroundColor(.red)
                //.border(.red)
                
                Divider()

        
                VStack (alignment:.leading){ //V2
                
                LinkBox(text: "Active Listening", link:"https://brockport.medicatconnect.com/form/active-listening.pdf" )
        
                TextBox(text: "Treating listening as an active process, rather than a passive one. This means participating in conversation, rather than acting as an audience. Active listeners show they are listening, encourage sharing, and strive to understand the speaker")
                        
                //-----------
                
                LinkBox(text: "Anger Coping Skills", link:"https://brockport.medicatconnect.com/form/coping-skills-anger.pdf" )
                    
                TextBox(text: "Anger triggers are the things that set you off. Knowing your triggers, and being cautious around them, will reduce the likelihood of your anger getting out of control.")
                    
                
                //-----------
                
                LinkBox(text: "Anxiety", link:"https://brockport.medicatconnect.com/form/what-is-anxiety.pdf" )
                    
                TextBox(text: "What is anxiety? How is it treated?")
                    
                 //-----------
                
                LinkBox(text: "Tips for setting healthy boundary", link:"https://brockport.medicatconnect.com/form/healthy-boundaries-tips.pdf")
                    
                TextBox(text: "Personal boundaries are the limits and rules we set for ourselves within relationships.")
                    
                //-----------
                
                LinkBox(text: "Tips for setting boundaries with others", link:"https://brockport.medicatconnect.com/form/setting-boundaries.pdf" )
                
                TextBox(text: "Boundaries should be based on your values, or the things that are important to you.")
        
            } //V2
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.leading], 15)
                //.border(.red)
                
              
                
                VStack (alignment: .leading){ //V3
                    
                    LinkBox(text: "Brief Therapy Overview", link:"https://brockport.medicatconnect.com/form/Brief_Therapy.pdf" )
                    
                    TextBox(text: "An overview of the Brief Therapy model")
                    
                    //-----------
                    
                    LinkBox(text: "Communicating during Conflict", link:"https://brockport.medicatconnect.com/form/soft-startups.pdf" )
                    
                    TextBox(text: "By starting a conversation calmly and respectfully, you and your partner are more likely to focus on the problem, rather than who’s to blame.")
                    
                    //-----------
                    
                    LinkBox(text: "Depression", link:"https://brockport.medicatconnect.com/form/soft-startups.pdf" )
                    
                    TextBox(text: "What is depression? How is it treated?")
                    
                    //-----------
                    
                    LinkBox(text: "Depression Coping Skills", link:"https://brockport.medicatconnect.com/form/coping-skills-depression.pdf" )
                    
                    TextBox(text: "Depression saps a person’s energy to do just about anything—even activities they enjoy. As a result, people with depression tend to become less active, which causes the depression to worsen. However, even a little bit of activity can help stop this cycle")
                    
                    //-----------
                  
                        LinkBox(text: "Emotions", link:"https://brockport.medicatconnect.com/form/basic-emotions-printout.pdf" )
                        
                        TextBox(text: "Emotions can be hard to describe at times. Here is a list of some basic emotions we experience.")
           
                } //V3
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.leading], 15)
                //.border(.red)
                
                VStack (alignment: .leading){//V4
                    LinkBox(text: "Exercising and Mental Health", link:"https://brockport.medicatconnect.com/form/mental-health-exercise-benefits.pdf" )
                    
                    TextBox(text: "Research has shown us that people who exercise regularly tend to be more resistant to many mental health issues. Exercise can help treat current symptoms and prevent future episodes.")
                    
                }//V4
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.leading], 15)
                //.border(.red)
                
                
                
                
        }//S
             
            
        }//V0
        .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))//V0
        
      
        
    }
}

struct EducationView_Previews: PreviewProvider {
    static var previews: some View {
        EducationView()
    }
}

func LinkBox(text: String, link: String) -> some View {
    
    //Link(text,
      //   destination: URL(string: link)!)
    
    Link(destination: URL(string: link)!, label: {
        Text(text)
            .underline()
    })
    
}

func TextBox(text: String) -> some View {
    Text(text)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
       // .border(.red)
        .foregroundColor(.accentColor)
        .font(.iconText)
    
}

