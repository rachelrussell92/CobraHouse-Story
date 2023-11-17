import SwiftUI

struct Chapter4View: View {
    @State var story:[String] = [ "After Thea discovered the tragic revelation that she would meet the same fate as her parents, she embarked on a frantic quest to find a cure.Guided by an old book she stumbled upon, which mentioned Snake Island, she sought out the wisdom of an elderly Indian man rumored to hold the key to her salvation.Eagerly, Thea inquired, \"Can you help me find the cure mentioned in the ancient texts? It's my only hope to escape the same fate as my parents.\" The old man nodded gravely, \"The cure lies in the mystic pig's blood.\"", "Determined to secure this remedy, Thea scoured Belle Island, facing numerous trials and obstacles along the way.Eventually, she managed to locate the elusive pig and skillfully extracted its blood.  Returning to the old man, Thea watched with anticipation as he performed a mystical ritual and injected her with the pig's life-giving blood.", "For a year, she lived in hope, believing that her troubles were behind her.  However, one fateful day, she sensed something was amiss. Her health was rapidly deteriorating, and it became painfully evident that she had been seconds too late with the injection. Her fate was sealed.  She passed away after giving birth to her child, who was left in the care of her aunt and uncle. Inquisitively, the young girl, much like her mother, asked, 'Why shouldn't we go into that house?  This story ends, leaving behind a lingering sense of mystery and a tale of fate that spans generations.",""
    ]
    func fight(){
        if hitCount == 10 {
            isJumpScareon = false
        }
    }
    
    @State var isJumpScareon:Bool = false
    @State var hitCount:Int = 0
    @State var storyCount: Int = 0
    var body: some View {
        
        ZStack{
            Color.black
                .ignoresSafeArea()
            PoolOfBlood()
            ZStack{
                Button(action: {
                    hitCount += 1
                    fight()
                }, label: {
                    Image("cobraLady")
                        .resizable()
                        .scaledToFill()
                        .overlay( VStack{
                          
                            Group{  Text("THE END !!!  ")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                Text("OR IS IT ? ")
                                    .foregroundStyle(.white)
                                    .font(.title)
                            }
                            .fontWeight(.bold)
                        })
                        .scaleEffect(CGSize(width:isJumpScareon ? 1.0 : 0, height: isJumpScareon ? 1.0 : 0 ))
                        
                })
                
                
               
            }
            .onAppear(){
                
            }
            if isJumpScareon == false {
                VStack{
                    Text("Chapter 4")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .bold()
                    
                    Spacer()
                        Text("  \(story[storyCount])")
                            .foregroundStyle(Color.white)
                            .frame(width: 300)
                    Spacer()
                    HStack{
                        Button(action: {
                            if storyCount > 0 {
                                storyCount -= 1
                            }
                        }, label: {
                            Image(systemName: "arrow.left")
                        })
                        
                        Spacer()
                        Button(action: {
                            if storyCount < 3 {
                                storyCount += 1
                            }
                            if storyCount == 3{
                                withAnimation(Animation.spring(response: 0.6, dampingFraction: 0.2, blendDuration: 3).repeatCount(1)) {
                                    isJumpScareon = true
                                }
                            }
                        }, label: {
                            Image(systemName: "arrow.right")
                        })
                        
                    }
                    .padding(.horizontal,10)
                    .padding(.bottom,50)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                   
                }
                .frame(width: 300)
            }
            
        }
    }
}

#Preview {
    Chapter4View()
}
