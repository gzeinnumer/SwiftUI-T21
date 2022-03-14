//
//  ContentView.swift
//  SwiftUI T21
//
//  Created by M Fadli Zein on 14/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var tap = false
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Delay 0.2 Second Animation! Bounce Effect")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding()
        }
        .frame(width: 200.0, height: 200.0)
        .background(
            LinearGradient(gradient:
                            Gradient(colors: [Color.purple, Color.pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .mask(RoundedRectangle(cornerRadius: 30))
        .shadow(color: Color.purple, radius: 10, x: 0, y: 20)
        .scaleEffect(tap ? 1.2 : 1)
        .animation(.spring(response: 0.4, dampingFraction: 0.6))
        .onTapGesture {
            tap = true;
            DispatchQueue.main.asyncAfter(deadline: .now()+5, execute: {
                tap = false
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
