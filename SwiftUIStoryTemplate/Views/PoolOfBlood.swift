//
//  PoolOfBlood.swift
//  SwiftUIStoryTemplate
//
//  Created by Leon Singleton on 11/15/23.
//

import SwiftUI

struct PoolOfBlood: View {
    @State var isAnimating:Bool = false
    @State var IsBloodAnimated:Bool = false
    @State var IsBloodAnimated2:Bool = false
    @State var IsBloodAnimated3:Bool = false
    @State private var poolOffset: CGFloat = -3
    var body: some View {
        
        ZStack {
            // Dripping blood animation on the left side
            ForEach(0..<3) { _ in
                BloodDrip(leftSide: true, poolOffset: $poolOffset)
            }
            
            // Dripping blood animation on the right side
            ForEach(0..<3) { _ in
                BloodDrip(leftSide: false, poolOffset: $poolOffset)
            }
            
            VStack{
                Rectangle()
                    .fill(Color.red)
                    .overlay(
                        ZStack{
                            Circle()
                                .foregroundStyle(Color.red)
                                .offset(x:IsBloodAnimated2 ? 125: -15 ,y: -30 )
                                .scaleEffect(CGSize(width: 1.0, height:IsBloodAnimated3 ? 1.0 : 0.85))
                                .frame(width: 100)
                            Circle()
                                .foregroundStyle(Color.red)
                                .offset(x:IsBloodAnimated2 ? -125: 150 ,y: -30 )
                                .scaleEffect(CGSize(width: 1.0, height:IsBloodAnimated3 ? 1.01 : 0.95))
                                .frame(width: 100)
                            Circle()
                                .foregroundStyle(Color.red)
                                .offset(x:IsBloodAnimated2 ? 125: -150 ,y: -30 )
                                .scaleEffect(CGSize(width: 1.0, height:IsBloodAnimated3 ? 1.01 : 0.95))
                                .frame(width: 100)
                            Circle()
                                .foregroundStyle(Color.red)
                                .offset(x:IsBloodAnimated2 ? -50: 30 ,y: -30 )
                                .scaleEffect(CGSize(width: 1.0, height:IsBloodAnimated3 ? 1.01 : 0.86))
                                .frame(width: 100)
                            Circle()
                                .foregroundStyle(Color.red)
                                .offset(x:IsBloodAnimated2 ? -125: -150 ,y: -30 )
                                .scaleEffect(CGSize(width: 1.0, height:IsBloodAnimated3 ? 1.01 : 0.95))
                                .frame(width: 100)
                            Circle()
                                .foregroundStyle(Color.red)
                                .offset(x:IsBloodAnimated2 ? 125: 175 ,y: -30 )
                                .scaleEffect(CGSize(width: 1.0, height:IsBloodAnimated3 ? 1.01 : 0.86))
                                .frame(width: 100)
                            
                        })
                
               
                    .frame(width: UIScreen.main.bounds.width, height: 150)
                    .offset(y: IsBloodAnimated ?  UIScreen.main.bounds.height -  150  : UIScreen.main.bounds.height -  60 )
               
                Spacer()
            }
        }
        .onAppear {
            withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                isAnimating.toggle()
                
            }
            /*blood level*/
            withAnimation(Animation.easeIn(duration: 50.0).repeatForever(autoreverses: true)){
                IsBloodAnimated = true
            }
            withAnimation(Animation.easeIn(duration: 22.0).repeatForever(autoreverses: true)){
                IsBloodAnimated2 = true
            }
            withAnimation(Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true)){
                IsBloodAnimated3 = true
            }
        }
            }
        }

        struct BloodDrip: View {
            @State private var dripPosition: CGPoint = .zero
            @State private var dripSize: CGSize = CGSize(width: 10, height: 20)
            @State private var dripOpacity: Double = 1.0

            let leftSide: Bool
            @Binding var poolOffset: CGFloat

            var body: some View {
                Circle()
                    .fill(Color.red)
                    .frame(width: dripSize.width, height: dripSize.height)
                    .offset(x: leftSide ? dripPosition.x : -dripPosition.x, y: dripPosition.y)
                    .opacity(dripOpacity)
                    .onAppear {
                        setupDrip()
                        animateDrip()
                    }
            }

            func setupDrip() {
                dripPosition = CGPoint(x: CGFloat.random(in: 0..<UIScreen.main.bounds.width / 2), y: -20)
                dripSize = CGSize(width: CGFloat.random(in: 5...15), height: CGFloat.random(in: 10...30))
            }

            func animateDrip() {
                withAnimation(Animation.easeInOut(duration: Double.random(in: 3...7)).repeatForever(autoreverses: false)) {
                    dripPosition.y = UIScreen.main.bounds.height + dripSize.height
                    dripOpacity = 0.5
                }

                
                Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                    if dripPosition.y + dripSize.height > UIScreen.main.bounds.height - 100 + poolOffset {
                        withAnimation {
                            poolOffset -= 10 // Adjust the amount the pool moves
                        }
                        timer.invalidate()
                    }
                }
            }
        }

        


       

        


        


#Preview {
    PoolOfBlood()
}
