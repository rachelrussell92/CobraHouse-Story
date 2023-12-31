import SwiftUI
import AVFoundation
struct Chapter1View: View {
    @ObservedObject var vm = cobraVM()
    @State var isTextGlowing:Bool = true
    
    var pages:[String] = ["There once was a 15 year old girl named Thea who lived with her aunt and uncle in a small town called Meadow Ridge .  Thea moved in with her aunt and uncle when she was 6 years old, after her parents Margo and Robin. suddenly died on a crisp  Fall night in the town square. Thea was comfortable living in Meadow Ridge, she had friends and knew all the town elders. People loved Thea and her family trusted her to go into town on her own. The only rule was do not go to the house on the hill, The Cobra House.", "The Cobra House is a dusty old  house that sits on the tallest hill in Meadow Ridge. It overlooks the entire town. It is rumored that cobra house is where the cobra woman lives, a woman who turns into a cobra and haunts anyone who comes to the house.  At night some say you can hear a faint wisper of her chanting Cobra, Cobra, Cobra.  All her life Thea lived in Meadow Ridge but never actually saw the cobra woman."]
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
//            Image("cobraHouse")
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea()
            PoolOfBlood()
            VStack{
                Text("Chapter 1")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 30)
                TabView{
                    ForEach (pages, id: \.self)
                    { page in
                        
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: 300, height: 600)
                            .opacity(0.2)
                            .overlay(
                                Text(page)
                                    .foregroundStyle(isTextGlowing ? .white : .red)
                                    .shadow(color:Color.red,radius:isTextGlowing ? 100 : 0 )
                                    .frame(width: 250))
                            .onAppear(){
                                withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                                    isTextGlowing.toggle()
                                }
                                vm.speak(Story: pages[1])
                                
                            }
                    }
                    
                    
                    
                }
                .tabViewStyle(.page)
                
            }
            
        }
        
    }
}

#Preview {
    Chapter1View()
}
