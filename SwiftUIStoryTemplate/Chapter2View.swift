import SwiftUI


struct Chapter2View: View {
    
    
    @State var isJumpScareon:Bool = false
    @State var hitCount:Int = 0
    @State var pageCount: Int = 0
    @State var pages:[String] = ["Leah sat at her window staring at the Cobra House and wonders why everyone in town is so scarred of it. “I could find out for myself ” she thinks to herself.  She is home alone and there’s no one or nothing to stop her now she thinks to herself with the widest grin possible. She makes herself a sandwich and stuffs her face reminding herself that every minute counts if she wants to take her time exploring and be back before her aunt and uncle are back home.She dashes into the kitchen and empties out the groceries from her aunties sling bag and dashes back into her room with the bag." , "She throws in a few and convinces herself to pack light, I’ll be back before anyone knows it anyway.She hurriedly searches through her closet searching for what to wear so she could change from her pajamas and set out on her little quest.She finishes with changing clothes, puts on her shoes and grabs her sling bag. After stepping out the front door, she does a quick count as she looks through her bag to see if she has all the items she should; “Okay, I have everything!” she says to herself","One and a half hour later, she is at the bottom of the hill. She is exhausted but thinks to herself : “I’ve come too far to back down now, one little hill wouldn’t hurt.” 30 minutes later, “this does hurt, like a whole lot” she cries to herself. 23 minutes later, she arrives at the Cobra House. There is a strange eerie feeling and an impending sense of doom in the air. “It’s probably just placebo Leah“, she thinks to herself. “Stop whining and let’s get this over with.“She walks through the hallways and just like she thought, it was just another abandoned house that was oddly clean though. Not sparkly clean of course but it definitely did not look abandoned for years","She gets a battery notification as she has been using her flashlight all along and she realizes she’s been in the house for almost four hours. “oh, shoot”, she thinks to herself! “How did time go by so fast? Aunt Rachael is gonna kill me.” She dashes out the house almost tripping on her own steps. She eventually gets home, it’s dark outside and her phone is dead. Aunt Rachael is sitting at the door in the hallway; “now young lady, where the heck were you?” Leah just stands there trying to come up with a lie but fails and Aunt Rachael was not having none of it. After standing there in silence for what felt like forever but in reality was just a couple seconds, she finally admits to going to the forbidden Cobra House. She can see the anger rush to her aunts face and she instantly regrets telling the truth. With utter disbelief and tears in her eyes, she stands from the chair and walks away.","Hours go by and Leah is seated on her room floor. Suddenly she hears the front doors unlock, “uncle is back she thinks to herself.” She can feel her heartbeat in her throat with every second that goes by and eventually, she hears her uncle yell out her name : “Leeeeaaaaahh”. She feels chills go down her spine because Uncle Shad had never gotten that loud with her or with anyone, ever. She gradually approached the dining and she could see the anger and dissatisfaction in her uncles face. Now Leah started to rethink her actions and how they truly affect the people around her something she has never done. ”What is this Rachael is telling me? Why would you bring this upon us again Leah?, all we’ve ever done is love and care for you to the best of our ability. ”And he storms out of the room ”Again?”, she thinks to herself but she dared not say because she didn’t want him any angrier than he already appeared to be.","She goes into her room for the rest of the night and can’t stop wondering what he meant by “again”. So many questions keep going through her mind till she falls asleep. Leah wakes up the following day way past noon and that’s where she wonders if there is something actually wrong with her or it's just placebo. “Mehh, I’m just tired from all that hiking, I’ll be alright though.” She goes out of her room and she sees Uncle Shad and Aunty Rachael seated at the dining.Her heart starts racing, “why isn’t he at work?” she thinks to herself. “Take a seat Leah her aunt says. You could tell from her aunts eyes that she got no sleep last night and she was most likely crying all night too. Leah takes a seat and as the sun shines through the window and onto the dining table and her face, she just buries her face, too ashamed to look her guardians in the eyes. They all sit there in silence until she decides to break the silence in a bid to make them feel better and ease their worries: there was nothing and no one the house, I promise" ]
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
       
                    PoolOfBlood()
                    VStack {
                        Text("Chapter 2")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                            .bold()
                  Spacer()
                        
                        Text("\(pages[pageCount])")
                            .foregroundStyle(.white)
                            .frame(width: 300)
                             Spacer()
                        HStack{
                            Button(action: {
                                if pageCount > 0 {
                                    pageCount -= 1
                                }
                            }, label: {
                                Image(systemName: "arrow.left")
                            })
                            
                            Spacer()
                            Button(action: {
                                if pageCount < 5 {
                                    pageCount += 1
                                }
                            }, label: {
                                Image(systemName: "arrow.right")
                            })
                            
                        }
                        .padding(.horizontal,50)
                        .padding(.bottom,50)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        
                        
                    }
                    
          
      
            }
        
    }
}

#Preview {
    Chapter2View()
}
