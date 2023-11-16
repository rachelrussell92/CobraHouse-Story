import SwiftUI


struct Chapter2View: View {
    
    @State var isJumpScareon:Bool = false
    @State var hitCount:Int = 0
    func fight(){
        if hitCount == 10 {
            isJumpScareon = false
        }
    }
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
       
            
            if isJumpScareon == false{
                ZStack{
                    PoolOfBlood()
                    ScrollView {
                        Text("Leah sat at her window  staring at the  Cobra House and wonders why everyone in town is so scarred of it. “I could find out for myself” she thinks to herself.She is home alone and there’s no one or nothing to stop her now she thinks to herself with the widest grin possible. She makes herself a sandwich and stuffs her face reminding herself that every minute counts if she wants to take her time exploring and be back before her aunt and uncle are back home.She dashes into the kitchen and empties out the groceries from her aunties sling bag and dashes back into her room with the bag.")
                        
                        Text("One and a half hour later, she is at the bottom of the hill. She is exhausted but thinks to herself “I’ve come too far to back down now, one little hill wouldn’t hurt.” 30 minutes later, “this does hurt, like a whole lot” she cries to herself. 23 minutes later, she arrives at the Cobra House. There is a strange eerie feeling and an impending sense of doom in the air. “It’s probably just placebo Leah“, she thinks to herself. “Stop whining and let’s get this over with.")
                        
                        
                        
                        
                    }
                    .foregroundStyle(.white)
                    .frame(width: 300)
                }
            }
            ZStack{
                Button(action: {
                    hitCount += 1
                    fight()
                }, label: {
                    Image("cobraLady")
                        .resizable()
                        .scaledToFill()
                        .overlay( VStack{
                            Spacer()
                            Text("Tap to Defeat!!!")
                                .foregroundStyle(.white)
                                .font(.title)
                        })
                        .scaleEffect(CGSize(width:isJumpScareon ? 1.0 : 0, height: isJumpScareon ? 1.0 : 0 ))
                        
                })
                
                
               
            }
            }
        .onAppear(){
            withAnimation(Animation.spring(response: 0.6, dampingFraction: 0.2, blendDuration: 3).repeatCount(1)) {
                isJumpScareon = true
            }
        }
    }
}

#Preview {
    Chapter2View()
}
