//
//  GlassMorphicView.swift
//  CloudyDays
//
//  Created by Noah Boyers on 6/5/22.
//

import SwiftUI

struct GlassMorphicView: View {
    var body: some View {
     
      //  let width = UIScreen.main.bounds.width
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(.white)
                .opacity(0.1)
                .background(
                    Color.white
                        .opacity(0.08)
                        .blur(radius: 10)
                )
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(.linearGradient(.init(colors: [
                            Color.purple,
                            Color.purple
                                .opacity(0.5),
                            .clear,
                            .clear,
                            Color.lightBlue,
                        ]), startPoint: .topLeading, endPoint: .bottomTrailing),
                                lineWidth: 2.5
                )
                        .padding()
            )
                .shadow(color: .black.opacity(0.1), radius: 5, x: -5, y: -5)
                .shadow(color: .black.opacity(0.1), radius: 5, x: 5, y: 5)
            
            VStack {
                Image("CLOUD!")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120, alignment: .center)
                
                Text("72")
                    .font(.system(size: 85, weight: .bold))
                    .padding(.top,2)
                    .overlay(
                        Text("°F")
                        .font(.title2)
                        .foregroundColor(Color.white.opacity(0.7))
                        .offset(x:30, y: 15)
                             , alignment: .topTrailing)
                    .offset(x: -6)
                Text("New York, USA")
                    .font(.title3)
                    .foregroundColor(Color.white.opacity(0.4))
            }
        }
        //.frame(width: width / 1.7, height: 270)
    }
}

struct GlassMorphicView_Previews: PreviewProvider {
    static var previews: some View {
        GlassMorphicView()
    }
}
