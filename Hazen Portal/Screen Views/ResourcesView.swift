//
//  EducationView.swift
//  Hazen Portal
//
//  Created by Elijah Tay on 10/25/22.
//

import SwiftUI

struct ResourcesView: View {
    @State private var menuShowing = false
    
    var body: some View {
        VStack { //V0
            HeaderView(menuShowing: $menuShowing)
            
            ScrollView { //S
                
              
                VStack { //Outer Box
                    
                    VStack (alignment:.leading){ //V1
                        Group { //G1
                            Text("Welcome to My-Hazen your patient portal for the Counseling, Health and Sports Medicine Clinic")
                                .foregroundColor((Color("Background")))
                             
                    
                            Text("CRISIS TEXT LINE --- NEED SOMEONE TO TALK TO? Text \"Got5U\" to 741-741-Free, 24/7, Confidential text support.")
                            
                            Text("If you have a non-urgent medical or psychiatric concern, call 585-395-2414 and press option 1 for the Nurse Advice line. These nurses do NOT have access to you records and are unable to provice prescription refills, test results or make appointments.")
                            
                            Text("For emergencies during this time, please call 911 or University Police at 585-395-2222")
                          
                        } //G1
                        .padding([.bottom], 5)
                      //  .padding([.leading,.trailing], 10)
                        
                    }//V1
                    .font(.headerText)
                    .foregroundColor(.red)
                    .padding([.leading,.trailing], 10)
                    .background(.white)

                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .border(Color("AccentColor"))
                    
                }// V Outer
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding([.leading,.trailing, .top, .bottom], 15)
                .foregroundColor(Color.accentColor)
                
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
                .frame(maxWidth: .infinity,maxHeight:.infinity, alignment: .leading)
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
                .frame(maxWidth: .infinity,maxHeight:.infinity, alignment: .leading)
                .padding([.leading], 15)
                //.border(.red)
                
                VStack (alignment: .leading){//V4
                    LinkBox(text: "Exercising and Mental Health", link:"https://brockport.medicatconnect.com/form/mental-health-exercise-benefits.pdf" )
                    
                    TextBox(text: "Research has shown us that people who exercise regularly tend to be more resistant to many mental health issues. Exercise can help treat current symptoms and prevent future episodes.")
                    
                    //-----------
                    
                    LinkBox(text: "Facts about Grief", link:"https://brockport.medicatconnect.com/form/grief-fact-sheet.pdf" )
                    
                    TextBox(text: "The process of grieving often involves sadness, anger, loneliness,and other painful emotions.")
                    
                    //-----------
                    
                    LinkBox(text: "Grounding Technique", link:"https://brockport.medicatconnect.com/form/grounding-techniques.pdf" )
                    
                    TextBox(text: "Grounding techniques help control these symptoms by turning attention away from thoughts, memories, or worries, and refocusing on the present moment.")
                    
                    //-----------
                    
                    LinkBox(text: "How to Practice Mindful Meditation", link:"https://brockport.medicatconnect.com/form/how-to-practice-mindfulness-meditation.pdf" )
                    
                    TextBox(text: "During mindfulness meditation, you will focus on your breathing as a tool to ground yourself in the present moment. It’s normal that your mind will wander. You’ll simply bring yourself back into the moment by refocusing on your breathing, again and again.")
                    
                    //-----------
                    
                    LinkBox(text: "Leaves on a stream", link:"https://brockport.medicatconnect.com/form/leaves-on-a-stream-worksheet.pdf" )
                    
                    TextBox(text: "During the leaves on a stream exercise, you will visualize yourself resting near a stream. Whenever thoughts enter your mind, you will imagine placing them atop a leaf, and watching as they float away. Instead of seeing the world from “inside” your thoughts, you will take a step back and view them from afar. By doing so, you will gain perspective on your thoughts and feelings, reducing their power.")
                    
                    
                }//V4
                .frame(maxWidth: .infinity,maxHeight:.infinity, alignment: .leading)
                .padding([.leading], 15)
                //.border(.red)
                
                VStack(alignment: .leading) {//V5
                    
                    //-----------
                    
                    LinkBox(text: "Love Languages", link:"https://brockport.medicatconnect.com/form/love-languages.pdf" )
                    
                    TextBox(text: "Love languages are the ways people show and receive love. When you and your partner use different languages, it can be difficult to communicate your feelings. By learning your partner’s love language and helping them learn yours—you will be better able to share positive feelings.")
                    
                    //-----------
                    
                    LinkBox(text: "Positive Steps to Wellbeing", link:"https://brockport.medicatconnect.com/form/positive-steps-to-wellbeing.pdf" )
                    
                    TextBox(text: "Ways to increase wellbeing and happiness.")
                    
                    //-----------
                    
                    LinkBox(text: "Progressive Muscle Relaxation", link:"https://brockport.medicatconnect.com/form/progressive-muscle-relaxation-script.pdf" )
                    
                    TextBox(text: "Progressive muscle relaxation is an exercise that reduces stress and anxiety in your body by having you slowly tense and then relax each muscle. ")
                    
                    //-----------
                    
                    LinkBox(text: "Relaxation Techniques", link:"https://brockport.medicatconnect.com/form/relaxation-techniques.pdf" )
                    
                    TextBox(text: "When a person is confronted with anxiety, their body undergoes several changes and enters a special state called the fight-or-flight response. The body prepares to either fight or flee the perceived dange")
                    
                    //-----------
                    
                    LinkBox(text: "Self-Care Tips", link:"https://brockport.medicatconnect.com/form/self-care-tips.pdf")
                    
                    TextBox(text: "Self-care means taking time to do things")
                    
                    
                    
                }//V5
                .frame(maxWidth: .infinity,maxHeight:.infinity, alignment: .leading)
                .padding([.leading], 15)
                //.border(.red)
                
                VStack (alignment: .leading){ //V6
                    
                    //-----------
                    
                    LinkBox(text: "Sleep Hygiene", link:"https://brockport.medicatconnect.com/form/sleep-hygiene-handout.pdf" )
                    
                    TextBox(text: "Tips for better sleep.")
                    
                    
                    //-----------
                    
                    LinkBox(text: "Stress Management Tips", link:"https://brockport.medicatconnect.com/form/stress-management-tips.pdf" )
                    
                    TextBox(text: "Tips to better manage your stress.")
                    
                    //-----------
                    
                    LinkBox(text: "Study Tips", link:"https://brockport.medicatconnect.com/form/study-tips.pdf" )
                    
                    TextBox(text: "Study Tips for ADHD and Anxiety.")
                    
                    //-----------
                    
                    LinkBox(text: "Time Management Tips", link:  "https://brockport.medicatconnect.com/form/time-management-tips.pdf" )
                    
                    TextBox(text: "Tips to better manage your time.")
                    
                }//V6
                .frame(maxWidth: .infinity,maxHeight:.infinity, alignment: .leading)
                .padding([.leading], 15)
                //.border(.red)
         
               
          
                
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

struct ResourcesView_Previews: PreviewProvider {
    static var previews: some View {
        ResourcesView().preferredColorScheme(.dark)
    }
}

func LinkBox(text: String, link: String) -> some View {
    
  //  Link(text,
    //     destination: URL(string: link)!)
    
    Link(destination: URL(string: link)!, label: {
        Text(text)
            .underline()
    }) .padding([.bottom], 10)
    
}

func TextBox(text: String) -> some View {
    Text(text)
        .multilineTextAlignment(.leading)
        .frame(width: .infinity, height: .infinity, alignment: .leading)
        //.border(.red)
        .foregroundColor(.accentColor)
        .font(.iconText)
        .padding([.bottom, .trailing], 10)
    
}

