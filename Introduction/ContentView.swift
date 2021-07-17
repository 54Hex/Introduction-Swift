//
//  ContentView.swift
//  Introduction
//
//  Created by Conqueriings on 26/6/21.
//
// hehe >:D

import SwiftUI

struct ContentView: View {
    
    @State private var rotation: Angle = .zero
    @State private var fill: CGFloat = 0
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        
        
        
        ZStack {
            
            Text("Whoami?")
                .font(.system(size: 35.0, weight: .bold, design: .rounded))
                .offset(x: -110, y: -360)
            
            //name
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.black]), startPoint: .bottomLeading, endPoint: .trailing)
                .mask(Text("Wei Xuan").font(Font.system(size: 30)).fontWeight(.semibold))
                .frame(width: 370)
                .offset(x: 60, y: -280)
            //bio
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.black]), startPoint: .bottomLeading, endPoint: .trailing)
                .mask(Text("Cybersecurity enthusiast. Maybe...                R3DT34M1NG?  P3NT3ST1NG?                                           I also like to tinker with microcomputers such as RaspberryPi, Micro:Bit as well as coding.").font(Font.system(size: 25)).fontWeight(.semibold))
                .lineSpacing(1.5)
                .multilineTextAlignment(.leading)
                .frame(width: 350)
                .offset(x: -20, y: -55)
            //image
            Image("Keb")
                .resizable()
                .frame(width: 125, height: 125)
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.black, lineWidth: 5))
                .offset(x: -120, y: -250)
            
            //github
            
            Button(action:  {
                openURL(URL(string: "https://github.com/conqueriings")!)
                print("tapped")
            }) {
                Image("git")
                    .resizable()
            }
            .offset(x: 10, y: -230)
            .frame(width: 50, height: 50)
            
            //ig
            Button(action: {
                openURL(URL(string: "https://instagram.com/conqueriings")!)
                print("tapped2")
            }) {
                Image("ig2")
                    .resizable()
            }
            .offset(x: 70, y: -225)
            .frame(width: 50, height: 50)
            
            Button(action:  {
                EmailHelper.shared.sendEmail(subject: "Subject", body: "Text", to: "azure.cwx@gmail.com")
                print("tapped3")
            }) {
                Image(systemName: "paperplane.fill")
                    .font(.system(size: 40))
                    .foregroundColor(.black)
            }
            .offset(x: 120, y: -225)
            .frame(width: 50, height: 50)
            
            ZStack {
                Circle()
                    .stroke(lineWidth: 15)
                    .opacity(0.3)
                    .foregroundColor(.gray)
                    .frame(width: 145, height: 145)
                
                
                Circle()
                    
                    .trim(from: 0, to: 0.25)
                    .stroke(style: .init(lineWidth: 15.0,
                                         lineCap: .round,
                                         lineJoin: .round))
                    .foregroundColor(.gray)
                    .rotationEffect(Angle(degrees: 270))
                    .frame(width: 145, height: 145)
                
            }
            
            .frame(width: 200, height: 200)
            .rotationEffect(rotation)
            .onAppear {
                withAnimation(.linear(duration: 1).repeatForever(autoreverses: false)) {
                    rotation = Angle(degrees: 360)
                }
                withAnimation(.easeInOut(duration: 10).repeatForever(autoreverses: false)) {
                    fill += 1
                }
            }
            .offset(x: 10, y: 150)
            
            Text("Loading in progress...")
                .font(.system(size: 20, weight: .semibold, design: .monospaced))
                .foregroundColor(.gray)
                .offset(x: 10, y: 280)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}


//oh u found me
// noooo D:
