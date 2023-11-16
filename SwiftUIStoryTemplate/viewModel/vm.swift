//
//  vm.swift
//  SwiftUIStoryTemplate
//
//  Created by Leon Singleton on 11/16/23.
//

import Foundation
import AVFoundation
class cobraVM: ObservableObject{
    @Published var pageWriting:String = "Chiling with the homies stating to go to the store .  I do not know what to thinking about any of these.  So go to the store to grab a ring.  Today!!!"
    @Published var writings:[String] = ["y","p","l","o","h","t"]
    @Published var animatedPage:String = ""
    @Published var chapter:[Page] = []
    @Published var story:[Chapter] = []
    @Published var animateText:Bool = false
    @Published var indexValue:Int = 0
    @Published var timeInterval: TimeInterval = 0.085
    @Published var readSpeed: Double = 0.2
    @Published var synthesizer = AVSpeechSynthesizer()
    @Published var selectedVoice: AVSpeechSynthesisVoice?
    var pageCount:Int = 0
    struct Page{
        var pageNumber:Int = 0
        var paragraph: String = ""
    }
    struct Chapter{
        var pages: [Page]
    }
    var readablepage = Page(paragraph: "")
    
    func StartAnimation(){
        Timer.scheduledTimer(withTimeInterval: timeInterval, repeats: true){ [self]
            timer in
            if self.indexValue < self.pageWriting.count {
                self.animatedPage += String(pageWriting[self.pageWriting.index(pageWriting.startIndex, offsetBy: self.indexValue )])
                indexValue += 1
            }else{
                timer.invalidate()            }
        }
    }
    func speak(Story: String) {
           let speechUtterance = AVSpeechUtterance(string: Story)
           speechUtterance.rate = 0.5
           synthesizer.speak(speechUtterance)
   }
    
    
}
