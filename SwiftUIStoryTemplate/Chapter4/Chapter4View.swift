import SwiftUI

struct Chapter4View: View {
    var body: some View {
        
        ZStack{
            Color.black
                .ignoresSafeArea()
            PoolOfBlood()
            VStack{
            Text("Chapter 4")
                .foregroundStyle(Color.white)
                .font(.largeTitle)
            
                ScrollView{
                    Text("After Thea discovered the tragic revelation that she would meet the same fate as her parents, she embarked on a frantic quest to find a cure.Guided by an old book she stumbled upon, which mentioned Snake Island, she sought out the wisdom of an elderly Indian man rumored to hold the key to her salvation.Eagerly, Thea inquired, \"Can you help me find the cure mentioned in the ancient texts? It's my only hope to escape the same fate as my parents.\" The old man nodded gravely, \"The cure lies in the mystic pig's blood.\" Determined to secure this elusive remedy, Thea scoured Belle Island, facing numerous trials and obstacles along the way.Eventually, she managed to locate the elusive pig and skillfully extracted its blood.  Returning to the old man, Thea watched with anticipation as he performed a mystical ritual and injected her with the pig's life-giving blood. For a year, she lived in hope, believing that her troubles were behind her.  However, one fateful day, she sensed something was amiss. Her health was rapidly deteriorating, and it became painfully evident that she had been seconds too late with the injection. Her fate was sealed.  She passed away after giving birth to her child, who was left in the care of her aunt and uncle.  Years later, as Thea's daughter walked with her Aunt and Uncle past the that old house, she gazed curiously at it.  Inquisitively, the young girl, much like her mother, asked, \'Why shouldn't we go into that house?\' The story ends, leaving behind a lingering sense of mystery and a tale of fate that spans generations.")
                        .foregroundStyle(Color.white)
                        .frame(width: 300)
                }
            }
        }
    }
}

#Preview {
    Chapter4View()
}
