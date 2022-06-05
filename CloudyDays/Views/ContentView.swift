//
//  ContentView.swift
//  CloudyDays
//
//  Created by Noah Boyers on 6/5/22.
//

import SwiftUI
import CoreLocationUI

struct ContentView: View {
    
    @StateObject var location = LocationManager()
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.backgroundSecondary ,Color.backgroundPrimary], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            GeometryReader { geo in
                let size = geo.size
                
                Color.black
                    .opacity(0.7)
                    .blur(radius: 20)
                    .ignoresSafeArea()
                Circle()
                    .fill(Color.purple)
                    .padding(50)
                    .blur(radius: 120)
                    .offset(x: -size.width / 1.8, y: -size.height / 5)
                
                Circle()
                    .fill(Color.lightBlue)
                    .padding(50)
                    .blur(radius: 150)
                    .offset(x: -size.width / 1.8, y: -size.height / 2)
                
                Circle()
                    .fill(Color.lightBlue)
                    .padding(50)
                    .blur(radius: 90)
                    .offset(x: -size.width / 1.8, y: -size.height / 2)
                
                Circle()
                    .fill(Color.purple)
                    .padding(50)
                    .blur(radius: 110)
                    .offset(x: -size.width / 1.8, y: -size.height / 2)
                Circle()
                    .fill(Color.purple)
                    .padding(100)
                    .blur(radius: 110)
                    .offset(x: -size.width / 1.8, y: -size.height / 5)
            }
            
            VStack {
                Spacer(minLength: 10)
                ZStack {
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 100, height: 100)
                        .blur(radius: 20)
                        .offset(x: 120, y: -80)
                    Circle()
                        .fill(Color.lightBlue)
                        .frame(width: 100, height: 100)
                        .blur(radius: 40)
                        .offset(x: -120, y: 100)
                    GlassMorphicView()
                }
                Spacer(minLength: 10)
                Text("Know Everything \nabout the weather")
                    .font(.system(size: UIScreen.main.bounds.height < 750 ? 30 : 40, weight: .bold))
                    .foregroundColor(.white)
                
                Text(getAttributedString())
                    .fontWeight(.semibold)
                    .kerning(1.1)
                    .padding(.top,10)
                
                Button{} label: {
                    Text("Geting Started")
                        .font(.title3.bold())
                        .padding(.vertical,22)
                        .frame(maxWidth: .infinity)
                        .background(.linearGradient(.init(colors: [
                            Color.purpleButton,
                            Color.accentButton]), startPoint: .leading, endPoint: .trailing), in: RoundedRectangle(cornerRadius: 20))
                }
                .padding(.horizontal, 50)
                .padding(.vertical, 20)
            }
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding()
        }.onAppear {
            location.checkIfLocationServicesIsEnabled()
            
        }
    }
    
    func getAttributedString() -> AttributedString {
        var attStr = AttributedString("Start Now and get the \n local weather instantly")
        attStr.foregroundColor = .gray
        
        if let rang = attStr.range(of: "Local Weather") {
            attStr[rang].foregroundColor = .white
        }
        return attStr
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
